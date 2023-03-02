<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use App\MyDataTable\MDT_Query;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class SettingController extends Controller
{

    use MDT_Query;

    public function __construct()
    {
        $this->middleware('haveRole:setting.index')->only('index');
        $this->middleware('haveRole:setting.update')->only('update');
    }


    public function index()
    {

        return  $this->MDT_Query_method(// Start Query
            Setting::class ,
            'admin/pages/settings/index',
            false, // Soft Delete
        ); // end query
    }

    public function update(Request $request, $id)
    {


        Setting::where('id' , $id)->update([
            'description'  => strip_tags($request->description),
            'value' => strip_tags($request->value),
        ]);

        $settings =  Setting::all(['name' , 'value'])->pluck('value', 'name' )->all();

        Cache::put('points_percentage', $settings['points_percentage']);

        Cache::put('points_end', $settings['points_end']);

        return response([
            'status' => 'success' ,
            'message' => __('form.response.update data'),
        ]);
    }
}
