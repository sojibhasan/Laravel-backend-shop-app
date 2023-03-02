<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\SliderRequest;
use App\Models\Product;
use App\Models\Slider;
use App\MyDataTable\MDT_Method_Action;
use App\MyDataTable\MDT_Query;
use App\MyDataTable\MDT_UploadImag;

class SliderController extends Controller
{
    use MDT_UploadImag , MDT_Query, MDT_Method_Action;

    public function __construct()
    {
        $this->middleware('haveRole:slider.index')->only('index');
        $this->middleware('haveRole:slider.create')->only(['create' , 'store']);
        $this->middleware('haveRole:slider.update')->only('update');
        $this->middleware('haveRole:slider.destroy')->only('destroy');
    }


    public function index()
    {

        return  $this->MDT_Query_method(// Start Query
            Slider::class ,
            'admin/pages/sliders/index',
            false, // Soft Delete
            [ // Other Options
                'where'    => ['where', 'is_slider' , '=', 1],
            ]
        ); // end query
    }


    public function create()
    {

        return  view('admin.pages.sliders.create');
    }


    public function store(SliderRequest $request)
    {

        Slider::create($this->columnsDB($request));

        return  back()->with('success' , __('form.response.create slider'));
    }


    public function update(SliderRequest $request, $id)
    {


        $slider = Slider::findOrFail($id);

        $slider->update($this->columnsDB($request , $slider));

        return response([
            'status' => 'success' ,
            'message' => __('form.response.update slider'),
            'url' => ['img' => asset("assets/images/sliders/$slider->img")]
        ]);
    }


    public function destroy($id){

        $sliders = Slider::whereIn('id' , \request('tdSelected' , [$id]))->get();

        $this->MDT_deleteMultiImage($sliders->map->img->all(), 'assets/images/sliders');

        return $this->MDT_delete(Slider::class , $id);

    }

    ///////////////////////////////////////////////////////
    ////                                               ////
    //// ..........  Methods Clean Code .............. ////
    ////                                               ////
    ///////////////////////////////////////////////////////


    public function columnsDB($request , $slider=null){

        $img = $this->MDT_saveImage($request->img , time().random_int(1000 , 100000) , 'assets/images/sliders');

        if ($request->img && $slider) {

            $this->MDT_deleteImage($slider->img , 'assets/images/sliders');
        }


        $in_app = $request->in_app == 1 ? 1 :0;

        if ($in_app) {

            $product = Product::find($request->link);

            if (!$product) {
                abort(404);
            }
        }

        return [
            'description' => $request->description,
            'link' => $request->link,
            "img" => $img ?? $slider->img,
            'in_app' => $in_app,
        ];
    }
}
