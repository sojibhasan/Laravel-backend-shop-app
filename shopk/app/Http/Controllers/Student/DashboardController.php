<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductOrder;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){

        $products = [];

        $student = auth('student')->user();

        ProductOrder::latest('id')
            ->where('student_id' , '=' , $student->id)
            ->where('created_at' ,  '>'  , Carbon::now()->subWeek())
            ->get(['id' , 'created_at'])
            ->groupBy(function($item) {
                return $item->created_at->format('Y-m-d');
            })->each(function ($value) use (&$products){
                $products [] = $value->count();
            });


        $added_products_count = Product::whereRelation('students' , 'student_id' , '=' , $student->id)->count();


        return view('student.pages.dashboard.index')->with([

            'products' => array_reverse($products),
            'student' => $student,
            'added_products_count' => $added_products_count,
        ]);
    }


}
