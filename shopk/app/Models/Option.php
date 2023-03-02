<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Option extends Model
{
    use HasFactory , SoftDeletes;

    protected $guarded = ['_token'];

    public function attribute(){

        return $this->belongsTo(Attribute::class);
    }

    public function values(){

        return $this->hasMany(OptionValue::class );
    }
}
