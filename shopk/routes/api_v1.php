<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Web\Api\AuthController;
use App\Http\Controllers\Web\Api\HomeProductsController;
use App\Http\Controllers\Web\Api\CategoryController;
use App\Http\Controllers\Web\Api\TapProductController;
use App\Http\Controllers\Web\Api\SingleProductController;
use App\Http\Controllers\Web\Api\ProductInCategoriesController;
use App\Http\Controllers\Web\Api\RatingProductController;
use App\Http\Controllers\Web\Api\LikeController;
use App\Http\Controllers\Web\Api\OrderController;
use App\Http\Controllers\Web\Api\CouponController;
use App\Http\Controllers\Web\Api\ShippingAddressController;
use App\Http\Controllers\Web\Api\AreaController;
use App\Http\Controllers\Web\Api\CountryController;
use App\Http\Controllers\Web\Api\ContactController;
use App\Http\Controllers\Web\Api\InfoController;
use App\Http\Controllers\Student\Api\StudentController;
use App\Http\Controllers\Student\Api\AuthController as AuthStudentController;

const Response_Success = 1;
const Response_Fail = 0;

//////////////////////////////// start  auth /////////////////////////////////////////////

Route::post('login', [AuthController::class , 'login']);
Route::post('register', [AuthController::class , 'register']);
Route::post('logout', [AuthController::class , 'logout']);
Route::post('refresh', [AuthController::class , 'refresh']);
Route::get('profile', [AuthController::class , 'userProfile']);
Route::post('edit-profile', [AuthController::class , 'editProfile']);
Route::post('change-password', [AuthController::class , 'changePassword']);
Route::post('check-phone', [AuthController::class , 'checkPhone']);
Route::post('forgot-password', [AuthController::class , 'forgotPassword']);
Route::post('remove-account', [AuthController::class , 'removeAccount']);
Route::post('custom-remove-account', [AuthController::class , 'customRemoveAccount']);

//////////////////////////////// end  auth /////////////////////////////////////////////


///////////////////////////////// start Home /////////////////////////////////////

Route::get('get-home-products' , [HomeProductsController::class , 'index']);

Route::get('get-ids-product-like' ,  [HomeProductsController::class , 'idsProductLike']);

///////////////////////////////// end Home /////////////////////////////////////


///////////////////////////////// start categories /////////////////////////////////////

Route::get('get-parent-categories' , [CategoryController::class , 'parentCategories']);

Route::get('get-sub-categories' , [CategoryController::class , 'subCategories']);

///////////////////////////////// end categories ///////////////////////////////////////


/////////////////////////////////// start products in categories //////////////////////////

Route::get('get-products-in-parentCategory/{category_id}' , [ProductInCategoriesController::class , 'productsInParentCategory']);

Route::get('get-new-products/{category_id}' , [ProductInCategoriesController::class , 'newProducts']);

Route::get('get-best-products/{category_id}' , [ProductInCategoriesController::class , 'bestProducts']);

Route::get('get-offer-products/{category_id}' , [ProductInCategoriesController::class , 'offerProducts']);

Route::get('get-recommended-products/{category_id}' , [ProductInCategoriesController::class , 'recommendedProducts']);

/////////////////////////////////// end products in categories //////////////////////////////


///////////////////////////////// start tabs //////////////////////////////////////////

Route::get('get-new-products' , [TapProductController::class , 'newProducts']);

Route::get('get-best-products' , [TapProductController::class , 'bestProducts']);

Route::get('get-offer-products' , [TapProductController::class , 'offerProducts']);

Route::get('get-recommended-products' , [TapProductController::class , 'recommendedProducts']);

Route::get('get-topLikes-products' , [TapProductController::class , 'topLikesProducts']);

Route::get('get-topRating-products' , [TapProductController::class , 'topRatingProducts']);

///////////////////////////////// end tabs ///////////////////////////////////////////////


/////////////////////////////////// start single products///////////////////////////////////

Route::get('get-product/{product_id}' , [SingleProductController::class , 'getProduct'])->name('product');

Route::get('product/get-ratings' , [SingleProductController::class , 'getRatings']);

/////////////////////////////////// end single product ///////////////////////////////////////


///////////////////////////////////////// start rating ///////////////////////////////////////////////

Route::post('get-my-ratings' , [RatingProductController::class , 'getMyRating']);

Route::post('save-rating' , [RatingProductController::class , 'saveRating']);

///////////////////////////////////////// end rating ////////////////////////////////////////////////


///////////////////////////////////////// start like ///////////////////////////////////////////////

Route::post('product/like' , [LikeController::class , 'saveOrRemove']);

Route::post('get-myProducts-likes' , [LikeController::class , 'getMyProductsLikes']);

///////////////////////////////////////// end like /////////////////////////////////////////////////



///////////////////////////////////////// start order /////////////////////////////////////////

Route::get('get-countries' , [CountryController::class , 'index']);

Route::get('get-areas' , [AreaController::class , 'index']);

Route::post('get-order' , [OrderController::class , 'getOrder']);
Route::post('get-orders' , [OrderController::class , 'getOrders']);
Route::post('save-order' , [OrderController::class , 'save']);

Route::post('check-coupon' , [CouponController::class , 'checkCoupon']);

///////////////////////////////////////// end order /////////////////////////////////////////////////

Route::post('get-myShipping-address' , [ShippingAddressController::class , 'index']);

Route::post('save-myShipping-address' , [ShippingAddressController::class , 'save']);

Route::post('update-myShipping-address' , [ShippingAddressController::class , 'update']);

Route::post('delete-myShipping-address' , [ShippingAddressController::class , 'delete']);

///////////////////////////////////////// start student ///////////////////////////////////////////////

Route::post('register-students' , [AuthStudentController::class , 'register']);

Route::get('home-students' , [StudentController::class , 'homeStudents']);

Route::get('get-students' , [StudentController::class , 'getStudents']);

Route::get('get-products-student' , [StudentController::class , 'getProducts']);

///////////////////////////////////////// end student /////////////////////////////////////////////////


///////////////////////////////////////// start info ///////////////////////////////////////////////

Route::get('infos' , [InfoController::class , 'index']);

///////////////////////////////////////// end info /////////////////////////////////////////////////



///////////////////////////////////////// start contact ///////////////////////////////////////////////

Route::post('contact' , [ContactController::class , 'save']);

///////////////////////////////////////// end contact /////////////////////////////////////////////////



