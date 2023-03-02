<?php

namespace App\Http\Controllers\Web\Api;

use App\Http\Controllers\Controller;
use App\Models\Ad;
use App\Models\Category;
use App\Models\Icon;
use App\Models\Product;
use App\Models\Slider;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeProductsController extends Controller
{
    const COUNT_ROWS = 6;

    public function __construct() {

        $this->middleware('auth.guard:web-api')->only('idsProductLike');
    }

    public function index(){

        $offerEndingSoon = Product::customSelect(['end_sale'])
            ->orderBy('end_sale' , 'asc')
            ->inStock()
            ->where('end_sale' , ">=" , Carbon::now()->format('Y-m-d'))
            ->where('in_sale' , 1)
            ->take(self::COUNT_ROWS)
            ->get();

        $newProducts = Product::customSelect()
            ->latest('id')
            ->take(self::COUNT_ROWS)
            ->get();


        $bestProducts = Product::customSelect(['is_best'])
            ->where('is_best' , 1)
            ->inStock()
            ->inRandomOrder()
            ->take(self::COUNT_ROWS)
            ->get();

        $recommendedProducts = Product::customSelect(['is_recommended'])
            ->where('is_recommended' , 1)
            ->inStock()
            ->inRandomOrder()
            ->take(self::COUNT_ROWS)
            ->get();

        $bestDiscount = Product::customSelect()
            ->where('in_sale' , 1)
            ->inStock()
            ->orderBy('discount_percentage' , 'desc')
            ->take(self::COUNT_ROWS)
            ->get();

        $bestPrice = Product::customSelect()
            ->orderBy('regular_price' , 'asc')
            ->inStock()
            ->take(self::COUNT_ROWS)
            ->get();

        $topLikes = Product::customSelect(['likes_count'])
            ->orderBy('likes_count' , 'desc')
            ->inStock()
            ->take(self::COUNT_ROWS)
            ->get();

        $topRating = Product::customSelect(['ratings'])
            ->orderBy('ratings' , 'desc')
            ->inStock()
            ->take(self::COUNT_ROWS)
            ->get();


        $icons = Icon::where('type' , 'icon')->get(['title' , 'img' , 'link']);

        $informations = Icon::where('type' , 'information')->get(['title', 'link']);

        $sliders = Slider::all();

        $ads = Ad::all();

        return  response([

            'status' => Response_Success,
            'data'   => [

                'offerEndingSoon'     => $offerEndingSoon,
                'newProducts'         => $newProducts,
                'bestProducts'        => $bestProducts,
                'recommendedProducts' => $recommendedProducts,
                'bestDiscount'        => $bestDiscount,
                'bestPrice'           => $bestPrice,
                'topLikes'            => $topLikes,
                'topRating'           => $topRating,
                'icons'               => $icons,
                'informations'        => $informations,
                'sliders'             => $sliders,
                'ads'                 => $ads,
            ],
        ]);

    }


    public function idsProductLike(){

        $likes = auth()->user()->likes->map->product_id;

        return response([
            'status'=> count($likes) > 0 ? Response_Success : Response_Fail,
            'data'  => $likes,
        ]);
    }
}
