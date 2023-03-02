<?php

namespace App\Providers;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        Paginator::useBootstrap();
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        $lang = Cookie::get('3d-lang') ? Cookie::get('3d-lang') : 'ar';

        app()->setLocale($lang);

    }
}
