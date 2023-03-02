<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Attribute extends Model
{
    use HasFactory , SoftDeletes;

    protected $guarded = [
        '_token'
    ];

    public function product(){

        return $this->belongsTo(Product::class);
    }

    public function options(){

        return $this->hasMany(Option::class);
    }


}
