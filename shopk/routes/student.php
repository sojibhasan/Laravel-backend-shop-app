<?php

use Illuminate\Support\Facades\Route;

use \App\Http\Controllers\Student\Auth\LoginController;
use \App\Http\Controllers\Student\Auth\RegisterController;
use \App\Http\Controllers\Student\Auth\ForgotPasswordController;
use \App\Http\Controllers\Student\Auth\ResetPasswordController;
use \App\Http\Controllers\Student\Auth\ConfirmPasswordController;

use \App\Http\Controllers\Student\DashboardController;
use \App\Http\Controllers\Student\ProfileController;
use \App\Http\Controllers\Student\ProductController;
use \App\Http\Controllers\Student\OrderController;

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

Route::view('notActive' , 'student.pages.notActive.index')->name('notActive');

Route::get('save-lang/{lang}', [\App\Http\Controllers\LangController::class, 'index'])->name('lang.change');

Route::middleware('student.auth')->group(function () {

    Route::get('/' , [DashboardController::class , 'index'])->name('home');


    Route::get('profile', [ProfileController::class, 'show'])->name('profile.show');
    Route::post('profile/img', [ProfileController::class, 'updateImg'])->name('profile.updateImg');
    Route::put('profile', [ProfileController::class, 'updateInfo'])->name('profile.updateInfo');
    Route::post('profile', [ProfileController::class, 'updatePassword'])->name('profile.updatePassword');

    Route::get('products/showCategories' , [ProductController::class,  'showCategories'])->name('showCategories');

    Route::get('products/myProducts' , [ProductController::class,  'myProducts'])->name('myProducts');

    Route::get('products/showProducts/{cat_id}' , [ProductController::class,  'showProducts'])->name('showProducts');

    Route::post('products/saveProduct/{id}' , [ProductController::class,  'saveProduct'])->name('saveProduct');

    Route::post('products/removeProduct/{id}' , [ProductController::class,  'removeProduct'])->name('removeProduct');

    Route::get('orders' , [OrderController::class,  'index'])->name('orders');
});
