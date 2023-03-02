<?php

namespace App\Http\Controllers\Web\Api;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {

        $this->middleware('auth.guard:web-api', ['except' => ['login', 'register' , 'forgotPassword', 'checkPhone' , 'customRemoveAccount']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request){

        $validator = \Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);
        // dd('ddd');

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $user=User::where('email',$request->email)->first();
        if(!$user){
             return response([
                'status'  => Response_Fail,
                'message' => __('auth.dontHaveAcount'),
            ]);

        }

        if (! $token = auth()->attempt($validator->validated())) {
             return response([
                'status'  => Response_Fail,
                'message' => __('auth.password'),
            ]);
        }


        \auth()->user()->device_token =  (string)$request->device_token;
        \auth()->user()->save();

        return $this->createNewToken($token);
    }


    public function register(Request $request) {

        $validator = \Validator::make($request->all(), [
            'name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users,email',
            'phone' => 'required|string|string|max:20|unique:users,phone',
            'password' => 'required|string|confirmed|min:8|max:255',
        ]);

        if($validator->fails()){
            return response([
                'status'  => Response_Fail,
                'message' => $validator->errors()->all(),
            ]);
        }

        $user = User::create(array_merge(
            $validator->validated(),
            ['password' => bcrypt($request->password)]
        ));


        return response()->json([
            'message' => __('user registered'),
            'data' => [
                'status' => Response_Success,
                'user' => $user,
                'token' => auth()->attempt($request->only(['email' , 'password']))
            ]
        ]);
    }


    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout() {

        auth()->logout();

        return response()->json(['message' => __('user logout')]);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        return $this->createNewToken(auth()->refresh());
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userProfile() {
        return response()->json(auth()->user());
    }

    public function editProfile(Request $request) {

        $validator = \Validator::make($request->all(), [
            'name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users,email,'.\auth()->id(),
        ]);

        if($validator->fails()){
            return response([
                'status'  => Response_Fail,
                'message' => $validator->errors()->all(),
            ]);
        }

        \auth()->user()->update( $validator->validated());

        return response()->json([
            'status' => Response_Success,
            'message' => __('user profile update'),
            'user' => \auth()->user()
        ]);
    }

    public function changePassword(Request $request) {

        $validator = \Validator::make($request->all(), [
            'old_password' => 'required|string|min:8|max:255',
            'new_password' => 'required|string|min:8|max:255',
        ]);

        if($validator->fails()){
            return response([
                'status'  => Response_Fail,
                'message' => $validator->errors()->all(),
            ]);
        }

        if (Hash::check($request->old_password , auth()->user()->getAuthPassword())) {

            \auth()->user()->update([
                'password' => bcrypt($request->new_password)
            ]);

            return response()->json([
                'status'  => Response_Success,
                'message' => __('password update'),
            ]);
        }

        return response([
            'status'  => Response_Fail,
            'message' => __('old password is incorrect')
        ]);

    }

    public function checkPhone(Request $request) {

        $user = User::where('phone' , $request->phone)->first();

        return response()->json([
            'status'  => $user ? Response_Success : Response_Fail,
            'data' => $user,
        ]);
    }

    public function forgotPassword(Request $request) {

        $validator = \Validator::make($request->all(), [
            'user_id'  => 'required|integer|exists:users,id',
            'password' => 'required|string|min:8|max:255',
        ]);

        if($validator->fails()){
            return response([
                'status'  => Response_Fail,
                'message' => $validator->errors()->all(),
            ]);
        }

        User::where('id' , 'user_id')->update([
            'password' => bcrypt($request->password)
        ]);

        return response()->json([
            'status'  => Response_Success,
            'message' => __('Password has been restored'),
        ]);

    }

    public function removeAccount(Request $request) {

        $validator = \Validator::make($request->all(), [
            'password' => 'required|string|min:8|max:255',
        ]);

        if($validator->fails()){
            return response([
                'status'  => Response_Fail,
                'message' => $validator->errors()->all(),
            ]);
        }

        if (Hash::check($request->password , auth()->user()->getAuthPassword())) {

            \auth()->user()->delete();
            \auth()->logout();

            return response()->json([
                'status' => Response_Success,
                'message' => __('Account deleted'),
            ]);
        }

        return response([
            'status'  => Response_Fail,
            'message' => __('password is incorrect')
        ]);
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token){
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user()
        ]);
    }


    public function customRemoveAccount(){

        User::where('phone' , \request('phone'))->delete();

        return response([
            'status'  => Response_Success,
            'message' => __('delete success')
        ]);
    }
}

