<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;

class LangController extends Controller
{
    function index($lang){

        $lang = $lang === "ar" ? 'ar' : 'en';

        $cookie = Cookie::forever('3d-lang' , $lang);

        return back()->withCookie($cookie);
    }
}
