<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\CountryRequest;
use App\Models\Country;
use App\MyDataTable\MDT_Method_Action;
use App\MyDataTable\MDT_Query;
use App\MyDataTable\MDT_UploadImag;
use Illuminate\Http\Request;

class CountryController extends Controller
{

    use MDT_Method_Action , MDT_Query , MDT_UploadImag;


    public function __construct()
    {

        $this->middleware('haveRole:country.index')->only('index');
        $this->middleware('haveRole:country.create')->only(['create' , 'store']);
        $this->middleware('haveRole:country.update')->only('update');
        $this->middleware('haveRole:country.destroy')->only('destroy');
        $this->middleware('haveRole:country.restore')->only('restore');
        $this->middleware('haveRole:country.finalDelete')->only('finalDelete');

    }

    public function index()
    {

        $is_trash  = \request()->segment(2) === 'trash';

        return  $this->MDT_Query_method(// Start Query
            Country::class ,
            'admin/pages/countries/index',
            $is_trash, // Soft Delete
            [ // Other Options
                'with'    => ['is_trash' => $is_trash],
            ]

        ); // end query
    }


    public function create()
    {

        return  view('admin.pages.countries.create');
    }


    public function store(CountryRequest $request)
    {

        Country::create($this->columnsDB($request));

        return  back()->with('success' ,  __('form.response.create country'));
    }


    public function update(CountryRequest $request, $id)
    {

        $country = Country::withTrashed()->findOrFail($id);

        $country->update($this->columnsDB($request , $country));

        return response([
            'status' => 'success' ,
            'message' =>  __('form.response.update country'),
            'url' => ['flag' => asset("assets/images/flags/$country->flag")]
        ]);
    }


    public function destroy($id)
    {
        return $this->MDT_delete(Country::class , $id);
    }

    public function restore($id)
    {

        return $this->MDT_restore(Country::class , $id);
    }

    public function finalDelete($id)
    {
        return $this->MDT_finalDelete(Country::class , $id);
    }


    ///////////////////////////////////////////////////////
    ////                                               ////
    //// ..........  Methods Clean Code .............. ////
    ////                                               ////
    ///////////////////////////////////////////////////////


    public function columnsDB($request , $country=null){

        $flag = $this->MDT_saveImage($request->flag , $request->name_en , 'assets/images/flags');

        if ($request->flag && $country) {

            $this->MDT_deleteImage($country->flag , 'assets/images/flags');
        }

        return [
            'name_ar' => $request->name_ar,
            'name_en' => $request->name_en,
            'slug' => strlen($request->slug) > 0 ? \Str::slug($request->slug)  : \Str::slug($request->name_en),
            'code_phone' => $request->code_phone,
            'count_number_phone' => $request->count_number_phone,
            "flag" =>  $flag ?? $country->flag,
        ];
    }
}
