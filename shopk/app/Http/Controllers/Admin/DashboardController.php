<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductOrder;
use App\Models\Student;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){

        $orders = [];


        Order::latest('id')
            ->where('created_at' ,  '>'  , Carbon::now()->subWeek())
            ->get(['id' , 'created_at'])
            ->groupBy(function($item) {
                return $item->created_at->format('Y-m-d');
            })->each(function ($value) use (&$orders){
                $orders [] = $value->count();
            });


        $lastProducts = Product::latest()
            ->take(10)
            ->get();


        $lastOrders = Order::latest()
            ->take(10)
            ->get();

        $topProductsLikes = Product::orderBy('likes_count' , 'desc')
            ->take(10)
            ->get();

        $topProductsRating = Product::orderBy('ratings' , 'desc')
            ->take(10)
            ->get();

        return view('admin.pages.dashboard.index')->with([

            'lang' => app()->getLocale(),
            'orders' => array_reverse($orders),
            'products_count' => Product::count(),
            'orders_count' => Order::count(),
            'students_count' => Student::where('is_active',1)->count(),
            'users_count' => User::count(),
            'last_products' => $lastProducts,
            'last_orders' => $lastOrders,
            'top_products_likes' => $topProductsLikes,
            'top_products_ratings' => $topProductsRating,
        ]);
    }

}
