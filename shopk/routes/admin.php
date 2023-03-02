<?php

use Illuminate\Support\Facades\Route;

use \App\Http\Controllers\Admin\Auth\LoginController;
use \App\Http\Controllers\Admin\Auth\RegisterController;
use \App\Http\Controllers\Admin\Auth\ForgotPasswordController;
use \App\Http\Controllers\Admin\Auth\ResetPasswordController;
use \App\Http\Controllers\Admin\Auth\ConfirmPasswordController;

use \App\Http\Controllers\Admin\DashboardController;
use \App\Http\Controllers\Admin\SectionController;
use \App\Http\Controllers\Admin\CategoryController;
use \App\Http\Controllers\Admin\AttributeController;
use \App\Http\Controllers\Admin\OptionController;
use \App\Http\Controllers\Admin\ProductController;
use \App\Http\Controllers\Admin\RatingController;
use \App\Http\Controllers\Admin\AdminController;
use \App\Http\Controllers\Admin\UserController;
use \App\Http\Controllers\Admin\StudentController;
use \App\Http\Controllers\Admin\RoleController;
use \App\Http\Controllers\Admin\PermissionController;
use \App\Http\Controllers\Admin\ProfileController;
use \App\Http\Controllers\Admin\CountryController;
use \App\Http\Controllers\Admin\AreaController;
use \App\Http\Controllers\Admin\InfoController;
use \App\Http\Controllers\Admin\OrderController;
use \App\Http\Controllers\Admin\ContactController;
use \App\Http\Controllers\Admin\IconController;
use \App\Http\Controllers\Admin\SliderController;
use \App\Http\Controllers\Admin\AdController;
use \App\Http\Controllers\Admin\SearchController;
use \App\Http\Controllers\Admin\CouponController;



// Login
Route::get('login', [LoginController::class , 'showLoginForm'])->name('login');
Route::post('login',  [LoginController::class , 'login']);
Route::any('logout',  [LoginController::class , 'logout'])->name('logout');

// Register
Route::get('register', [RegisterController::class,'showRegistrationForm'])->name('register');
Route::post('register', [RegisterController::class,'register']);


// Reset Password
Route::get('password/reset', [ForgotPasswordController::class , 'showLinkRequestForm'])->name('password.request');
Route::post('password/email', [ForgotPasswordController::class , 'sendResetLinkEmail'])->name('password.email');
Route::get('password/reset/{token}', [ResetPasswordController::class , 'showResetForm'])->name('password.reset');
Route::post('password/reset',  [ResetPasswordController::class , 'reset'])->name('password.update');

// Confirm Password
Route::get('password/confirm', [ConfirmPasswordController::class,'showConfirmForm'])->name('password.confirm');
Route::post('password/confirm', [ConfirmPasswordController::class,'confirm']);


// Verify Email
// Route::get('email/verify', 'Auth\VerificationController@show')->name('verification.notice');
// Route::get('email/verify/{id}/{hash}', 'Auth\VerificationController@verify')->name('verification.verify');
// Route::post('email/resend', 'Auth\VerificationController@resend')->name('verification.resend');

Route::get('save-lang/{lang}', [\App\Http\Controllers\LangController::class, 'index'])->name('lang.change');


Route::middleware('admin.auth')->group(function (){


    Route::get('/' , [DashboardController::class , 'index'])->name('home');
    Route::get('dashboard' , [DashboardController::class , 'index'])->name('home');

    Route::resource('orders' , OrderController::class );

    Route::resource('categories' , CategoryController::class );
    Route::get('trash/categories/{id?}' , [CategoryController::class , 'index'])->name('categories.trash');
    Route::post('trash/categories/{id}' , [CategoryController::class , 'restore'])->name('categories.restore');
    Route::delete('trash/categories/{id}' , [CategoryController::class , 'finalDelete'])->name('categories.finalDelete');
    Route::get('sort/categories/' , [CategoryController::class , 'sortShow'])->name('categories.sort.show');
    Route::post('sort/categories/' , [CategoryController::class , 'sortSave'])->name('categories.sort.save');

    Route::resource('sections' , SectionController::class );
    Route::get('trash/sections/{id?}' , [SectionController::class , 'index'])->name('sections.trash');
    Route::post('trash/sections/{id}' , [SectionController::class , 'restore'])->name('sections.restore');
    Route::delete('trash/sections/{id}' , [SectionController::class , 'finalDelete'])->name('sections.finalDelete');
    Route::get('sort/sections/' , [SectionController::class , 'sortShow'])->name('sections.sort.show');
    Route::post('sort/sections/' , [SectionController::class , 'sortSave'])->name('sections.sort.save');

    Route::resource('attributes' , AttributeController::class );
    Route::get('trash/attributes/{id?}' , [AttributeController::class , 'index'])->name('attributes.trash');
    Route::post('trash/attributes/{id}' , [AttributeController::class , 'restore'])->name('attributes.restore');
    Route::delete('trash/attributes/{id}' , [AttributeController::class , 'finalDelete'])->name('attributes.finalDelete');

    Route::resource('options' , OptionController::class );
    Route::get('trash/options/{id?}' , [OptionController::class , 'index'])->name('options.trash');
    Route::post('trash/options/{id}' , [OptionController::class , 'restore'])->name('options.restore');
    Route::delete('trash/options/{id}' , [OptionController::class , 'finalDelete'])->name('options.finalDelete');


    Route::resource('products' , ProductController::class );
    Route::get('trash/products/{id?}' , [ProductController::class , 'index'])->name('products.trash');
    Route::post('trash/products/{id}' , [ProductController::class , 'restore'])->name('products.restore');
    Route::delete('trash/products/{id}' , [ProductController::class , 'finalDelete'])->name('products.finalDelete');
    Route::get('attributes/products/{id}' , [ProductController::class , 'attribute'])->name('products.attributes');

    Route::get('ratings/{status}' , [RatingController::class , 'index'])->name('rating.show');
    Route::post('rating/accept/{id}' , [RatingController::class , 'accept'])->name('rating.accept');
    Route::post('rating/reject/{id}' , [RatingController::class , 'reject'])->name('rating.reject');

    Route::resource('users' , UserController::class );
    Route::get('orders/users/{id?}' , [UserController::class , 'orders'])->name('users.orders');
    Route::get('trash/users/{id?}' , [UserController::class , 'index'])->name('users.trash');
    Route::post('trash/users/{id}' , [UserController::class , 'restore'])->name('users.restore');
    Route::delete('trash/users/{id}' , [UserController::class , 'finalDelete'])->name('users.finalDelete');

    Route::resource('student' , StudentController::class );
    Route::get('student/pending' , [StudentController::class , 'show'])->name('student.pending');
    Route::post('student_accept/{id}' , [StudentController::class , 'accept'])->name('student.accept');
    Route::post('student_reject/{id}' , [StudentController::class , 'reject'])->name('student.reject');
    Route::post('student_update_points/{id}' , [StudentController::class , 'updatePoints'])->name('student.updatePoints');
    Route::get('student/orders/{id}' , [StudentController::class , 'orders'])->name('student.orders');
    Route::get('trash/student/{id?}' , [StudentController::class , 'index'])->name('student.trash');
    Route::post('trash/student/{id}' , [StudentController::class , 'restore'])->name('student.restore');
    Route::delete('trash/student/{id}' , [StudentController::class , 'finalDelete'])->name('student.finalDelete');

    Route::resource('admins' , AdminController::class );
    Route::get('trash/admins/{id?}' , [AdminController::class , 'index'])->name('admins.trash');
    Route::post('trash/admins/{id}' , [AdminController::class , 'restore'])->name('admins.restore');
    Route::delete('trash/admins/{id}' , [AdminController::class , 'finalDelete'])->name('admins.finalDelete');

    Route::resource('roles' , RoleController::class );
    Route::get('trash/roles/{id?}' , [RoleController::class , 'index'])->name('roles.trash');
    Route::post('trash/roles/{id}' , [RoleController::class , 'restore'])->name('roles.restore');
    Route::delete('trash/roles/{id}' , [RoleController::class , 'finalDelete'])->name('roles.finalDelete');

    Route::get('roles/permission/{id}' , [PermissionController::class , 'index'])->name('permission.index');
    Route::post('roles/permission/{id}' , [PermissionController::class , 'update'])->name('permission.update');

    Route::get('profile', [ProfileController::class, 'show'])->name('profile.show');
    Route::put('profile', [ProfileController::class, 'updateInfo'])->name('profile.updateInfo');
    Route::post('profile', [ProfileController::class, 'updatePassword'])->name('profile.updatePassword');

    Route::resource('countries' , CountryController::class );
    Route::get('trash/countries/{id?}' , [CountryController::class , 'index'])->name('countries.trash');
    Route::post('trash/countries/{id}' , [CountryController::class , 'restore'])->name('countries.restore');
    Route::delete('trash/countries/{id}' , [CountryController::class , 'finalDelete'])->name('countries.finalDelete');

    Route::resource('areas' , AreaController::class );
    Route::get('trash/areas/{id?}' , [AreaController::class , 'index'])->name('areas.trash');
    Route::post('trash/areas/{id}' , [AreaController::class , 'restore'])->name('areas.restore');
    Route::delete('trash/areas/{id}' , [AreaController::class , 'finalDelete'])->name('areas.finalDelete');

    Route::resource('icons' , IconController::class );

    Route::get('search/{text}' , [SearchController::class , 'searchInProduct'])->name('searchProduct');

    Route::resource('sliders' , SliderController::class );

    Route::resource('ads' , AdController::class );

    Route::resource('coupons' , CouponController::class );

    Route::resource('about' , InfoController::class );
    Route::get('sort/about/' , [InfoController::class , 'sortShow'])->name('about.sort.show');
    Route::post('sort/about/' , [InfoController::class , 'sortSave'])->name('about.sort.save');

    Route::resource('delivery' , InfoController::class );
    Route::get('sort/delivery' , [InfoController::class , 'sortShow'])->name('delivery.sort.show');
    Route::post('sort/delivery' , [InfoController::class , 'sortSave'])->name('delivery.sort.save');

    Route::resource('information' , InfoController::class );
    Route::get('sort/information' , [InfoController::class , 'sortShow'])->name('information.sort.show');
    Route::post('sort/information' , [InfoController::class , 'sortSave'])->name('information.sort.save');

    Route::resource('question' , InfoController::class );
    Route::get('sort/question' , [InfoController::class , 'sortShow'])->name('question.sort.show');
    Route::post('sort/question' , [InfoController::class , 'sortSave'])->name('question.sort.save');

    Route::resource('howToUse' , InfoController::class );
    Route::get('sort/howToUse' , [InfoController::class , 'sortShow'])->name('howToUse.sort.show');
    Route::post('sort/howToUse' , [InfoController::class , 'sortSave'])->name('howToUse.sort.save');

    Route::resource('contact' , ContactController::class );

    Route::resource('settings' , \App\Http\Controllers\Admin\SettingController::class );


    Route::get('migrate-refresh'  , function (){

        \Illuminate\Support\Facades\Artisan::call('migrate:refresh');
    });

    Route::get('cache'  , function (){

        \Illuminate\Support\Facades\Artisan::call('cache:clear');
        \Illuminate\Support\Facades\Artisan::call('config:clear');
        \Illuminate\Support\Facades\Artisan::call('view:cache');
    });

    Route::get('migrate'  , function (){

        \Illuminate\Support\Facades\Artisan::call('migrate');
    });

    Route::get('seed'  , function (){

        \Illuminate\Support\Facades\Artisan::call('db:seed');
    });

    Route::get('jwt'  , function (){

        \Illuminate\Support\Facades\Artisan::call('key:generate');
        \Illuminate\Support\Facades\Artisan::call('jwt:secret');
        \Illuminate\Support\Facades\Artisan::call('cache:clear');
        \Illuminate\Support\Facades\Artisan::call('config:clear');
    });


});
