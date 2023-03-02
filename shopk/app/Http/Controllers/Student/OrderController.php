<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductOrder;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index(){

        $products = ProductOrder::latest()
            ->where('student_id' , auth('student')->id())
            ->paginate(24);

        return view('student.pages.orders.index' , compact('products'));
    }
}
