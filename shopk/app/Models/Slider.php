<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $appends = ['src'];

    public function getSrcAttribute(){

        return asset('assets/images/sliders');
    }
}
