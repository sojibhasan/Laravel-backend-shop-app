<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\ProductRequest;
use App\Models\Attribute;
use App\Models\Category;
use App\Models\Option;
use App\Models\OptionValue;
use App\Models\Product;
use App\MyDataTable\MDT_Method_Action;
use App\MyDataTable\MDT_Query;
use App\MyDataTable\MDT_UploadImag;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    use MDT_Query , MDT_Method_Action , MDT_UploadImag;

    protected $lang;
    protected $slug;
    protected $productUpdate_id;

    public function __construct()
    {
        $this->lang = app()->getLocale();

        $this->middleware('haveRole:product.index')->only('index');
        $this->middleware('haveRole:product.create')->only(['create' , 'store']);
        $this->middleware('haveRole:product.update')->only('update');
        $this->middleware('haveRole:product.destroy')->only('destroy');
        $this->middleware('haveRole:product.restore')->only('restore');
        $this->middleware('haveRole:product.finalDelete')->only('finalDelete');

    }


    public function index()
    {
        $is_trash  = \request()->segment(2) === 'trash';


        return  $this->MDT_Query_method(// Start Query
            Product::class ,
            'admin/pages/products/index',
            $is_trash, // Soft Delete
            [ // Other Options
                'with'      => ['is_trash' => $is_trash , 'lang' => $this->lang],
                'select'    => ['id', 'img' , "name_ar", 'regular_price' , 'sale_price' , 'in_sale' , 'is_best' , 'is_recommended',  'updated_at', 'created_at'],
            ]

        ); // end query

    }


    public function create()
    {

        $sections = Category::with("subCategories:id,parent_id,name_$this->lang")
            ->parentCategories()
            ->get(['id' , "name_$this->lang"]);

        $attributes = Attribute::with('options')->get(['id' , 'name_ar' , 'name_en']);

        $options    = Option::all();

        return view('admin.pages.products.create')->with([
            'sections' => $sections,
            'attributes' => $attributes,
            'options' => $options,
            'lang' => $this->lang
        ]);

    }


    public function store(ProductRequest $request)
    {


        // start save product
        $product = Product::create($this->columnsDB($request));
        //end save product

        //start save images gallery
        if (is_array($request->images)) {

            $images = $this->MDT_saveMultiImage($request->images, $this->slug, ['product_id', $product->id]);

            $product->images()->insert($images);
        }
        //end save images gallery

        //start save statements
        if (is_array($request->get('statements'))) {

            $product->statements()->insert(
                $this->statementsProcessing($request->get('statements') ,  $product->id)
            );

        }
        //end save statements


        //start save kurly
        if (is_array($request->get('kurly'))) {

            $product->kurly()->insert(
                $this->kurlyProcessing($request->get('kurly') ,  $product->id)
            );

        }
        //end save kurly

        //start save attributes

        if (is_array($request->get('attributes'))) {


            $data = $this->optionValueProcessing($request->get('attributes')  , $product->id);

            $product->attributes()->attach($data['attributes']);

            OptionValue::insert($data['options']);
        }

        //end save attributes


        //start save attributes

        if (is_array($request->get('categories'))) {

            $product->categories()->attach($request->categories);

        }
        //end save attributes

        return back()->with('success' , __('form.response.create product'));

    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $this->productUpdate_id = $id;


        $product = Product::with(['categories' , 'statements'])
            ->aov($id)
            ->findOrFail($id);

        $sections = Category::with("subCategories:id,parent_id,name_$this->lang")
            ->parentCategories()
            ->get(['id' , "name_$this->lang"]);

        $attributes = Attribute::with('options:id,name_ar,name_en,attribute_id')->get(['id' , 'name_ar' , 'name_en']);

        $options    = $attributes->map->options->collapse();

        return view( 'admin.pages.products.update')->with([

            'product'    => $product,
            'sections'   => $sections,
            'attributes' => $attributes,
            'options'    => $options,
            'lang'       => $this->lang
        ]);
    }


    public function update(ProductRequest $request, $id)
    {

        $product = Product::findOrFail($id); // check and get product

        // start update product
        $product->update($this->columnsDB($request , $product->img));
        //end update product


        //start save images gallery

        $oldImages = is_array($request->oldImages) ? $request->oldImages : [];

        $oldImages = $product->images()->whereNotIn('id' , $oldImages );
        $oldImages->delete();

        if (is_array($request->images)) {

        $this->MDT_deleteMultiImage($oldImages);

        $images = $this->MDT_saveMultiImage($request->images, $this->slug, ['product_id', $product->id]);

        $product->images()->insert($images);

        }

        //end save images gallery

        //start save statements
        $product->statements()->delete();

        if (is_array($request->get('statements'))) {

            $product->statements()->insert(
                $this->statementsProcessing($request->get('statements') ,  $product->id)
            );

        }

        //end save statements


        //start save kurly
        $product->kurly()->delete();
        
        if (is_array($request->get('kurly'))) {

            $product->kurly()->insert(
                $this->kurlyProcessing($request->get('kurly') ,  $product->id)
            );

        }

        //start save attributes

        if (is_array($request->get('attributes'))) {


            $data = $this->optionValueProcessing($request->get('attributes')  , $product->id);

            $product->attributes()->sync($data['attributes']);

            $product->optionsValue()->delete();

            OptionValue::insert($data['options']);

        }else{

            $product->attributes()->detach();
        }

        //end save attributes


        //start save categories

        if (is_array($request->get('categories'))) {

            $product->categories()->sync($request->categories);

        }
        //end save categories

        return back()->with('success' , __('form.response.update product'));
    }

    public function destroy($id)
    {
        return $this->MDT_delete(Product::class , $id);
    }

    public function restore($id)
    {

        return $this->MDT_restore(Product::class , $id);
    }

    public function finalDelete($id)
    {
        return $this->MDT_finalDelete(Product::class , $id);
    }





    ///////////////////////////////////////////////////////
    ////                                               ////
    //// ..........  Methods Clean Code .............. ////
    ////                                               ////
    ///////////////////////////////////////////////////////


    public function columnsDB($request , $oldImag = null){

        $this->slug =  strlen($request->slug) > 0 ? \Str::slug($request->slug)  : \Str::slug($request->name_en);


        $img = $request->file('img') ? $this->MDT_saveImage($request->img , $this->slug) : $oldImag;

        $regular_price  =  (double) $request->regular_price;
        $sale_price     = (double) $request->sale_price;
        $difference     = $regular_price - $sale_price;

        return [
            'img'                 => $img,
            'name_ar'             => $request->name_ar,
            'name_en'             => $request->name_en,
            'description_ar'      => $request->description_ar,
            'description_en'      => $request->description_en,
            'about_brand_ar'      => $request->about_brand_ar,
            'about_brand_en'      => $request->about_brand_en,
            'regular_price'       => $regular_price,
            'sale_price'          => $sale_price,
            'discount_percentage' => $sale_price <= 0 ? 0 : round(($difference / $regular_price) * 100,2),
            'in_sale'             => $request->has('in_sale') ? 1 : 0,
            'is_best'             => $request->has('is_best') ? 1 : 0,
            'is_recommended'      => $request->has('is_recommended') ? 1 : 0,
            'has_options'         => $request->has('has_options') ? 1 : 0,
            'start_sale'          => $request->start_sale,
            'end_sale'            => $request->end_sale?:null,
            'quantity'            => $request->quantity,
            'alt'                 => $request->alt,
            'slug'                => $this->slug
        ];
    }


    private  function optionValueProcessing($attributes , $product_id){

        $newOptions = [];
        $newAttributes = [];

        foreach ($attributes as $attribute){

            $options = $attribute['option'];

            foreach ($options as $option) {

                $newOptions[] = [
                    "regular_price" => array_key_exists('regular_price' , $option)?$option['regular_price']:null,
                    "sale_price"    => array_key_exists('sale_price' , $option)?$option['sale_price']:null,
                    "quantity"      => array_key_exists('quantity' , $option)?$option['quantity']:null,
                    "parent_id"     => array_key_exists('parent_id' , $option)?$option['parent_id']:null,
                    "option_id"     => $option['id'],
                    "product_id"    => $product_id,
                    'created_at'    => now(),
                    'updated_at'    => now(),
                ];

            }
            $newAttributes[] = $attribute['id'];
        }

        return ['options' => $newOptions , 'attributes' => $newAttributes];
    }

    private  function statementsProcessing($statements , $product_id){

        foreach ($statements as $key => $statement){

            $statements[$key]['product_id'] = $product_id;
        }

        return $statements ;
    }

    private  function kurlyProcessing($kurly , $product_id){

        foreach ($kurly as $key => $statement){

            $kurly[$key]['product_id'] = $product_id;
        }

        return $kurly ;
    }


    private  function optionsProcessing($options , $attribute_id , $product_id){

        foreach ($options as $key => $option){

            $options[$key]['attribute_id'] = $attribute_id;
            $options[$key]['product_id'] = $product_id;
        }

        return [$options] ;
    }


}
