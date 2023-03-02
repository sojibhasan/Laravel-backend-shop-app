<?php

namespace App\Http\Controllers\Web\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\RatingRequest;
use App\Models\Category;
use App\Models\Product;
use App\Models\Rating;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SingleProductController extends Controller
{

    public function getProduct($product_id){

        $product = Product::with([
            'categories' ,
            'statements',
            'images',
            'kurly'
        ])
            ->aov($product_id)
            ->where('id' , $product_id)
            ->first();



        return  response([
            'status'      => $product ? Response_Success : Response_Fail,
            'data'        => $product,
        ]);

    }



    public function getRatings(Request $request){

        $ratings = Rating::where('product_id' , $request->product_id)
            ->where('status' , 1)
            ->latest()
            ->simplePaginate(10);

        $ratingsCount = $ratings->count();

        return  response([
            'status'      => $ratingsCount > 0 ? Response_Success : Response_Fail,
            'countItems'  => $ratingsCount ,
            'data'        =>  $ratings->items(),
        ]);
    }
}
