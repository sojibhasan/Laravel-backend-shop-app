<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function products(){

        return $this->belongsToMany(Product::class , 'product_order')
            ->select(['products.id','name_ar' , 'name_en', 'slug', 'description_ar', 'description_en' , 'is_recommended', 'is_best' , 'in_sale', 'end_sale', 'ratings', 'likes_count', 'img'])
            ->withPivot(['product_name' , 'quantity', 'sale_price', 'regular_price','attributes']);
    }

    public function user(){

        return $this->belongsTo(User::class);
    }

    public function shipping_address(){

        return $this->belongsTo(ShippingAddress::class , 'shipping_address_id' , 'id');
    }
}
