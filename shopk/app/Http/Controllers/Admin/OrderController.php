<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Mail\StatusOrderMail;
use App\Models\Order;
use App\MyDataTable\MDT_Query;
use Illuminate\Http\Request;

class OrderController extends Controller
{

    use MDT_Query;

    private $lang;

    public function __construct()
    {

        $this->lang = app()->getLocale();

        $this->middleware('haveRole:order.index')->only('index');
        $this->middleware('haveRole:order.update')->only('update');
        $this->middleware('haveRole:order.show')->only('show');
    }

    public function index()
    {

        return $this->MDT_Query_method(// Start Query
            Order::class,
            'admin/pages/orders/index',
            false, // Soft Delete
            [
                'with_RS' => ['user:id,name,phone']
            ]
        ); // end query

    }



    public function update(Request $request, $id)
    {

        $order = Order::findOrFail($id);

        $oldStatus = $order->status;

        $order->update($this->columnsDB($request));

        if ($order->status != $oldStatus) {

            $this->notificationUSER($order->user, $order);
            \Mail::to($order->user->email)->send(new StatusOrderMail($order  , $oldStatus));
        }

        return response(['status' => 'success' , 'message' =>__('form.response.update order')]);

    }


    public function show($id)
    {
        $order = Order::with('products')->findOrFail($id);


        return view('admin.pages.orders.show')->with([
            'order' => $order,
            'lang' => $this->lang,
        ]);
    }



    ///////////////////////////////////////////////////////
    ////                                               ////
    //// ..........  Methods Clean Code .............. ////
    ////                                               ////
    ///////////////////////////////////////////////////////


    public function columnsDB($request){


        return [
            'status'         => $request->status,
//            'order_price'    => $request->order_price,
//            'shipping_price' => $request->shipping_price,
//            'total_price'     => $request->total_price,
        ];
    }

    function notificationUSER($user,$order)
    {

        $SERVER_API_KEY = 'AAAANmCdJy0:APA91bHbvtbJpPAFrxm05fiuVXUhOznADwl3aw
25n56J7lmzqIdcrfXH04LKcEOLtVjNTG92p3uwBqIYMhcjVgbWNyN7z_XTWkngRGOT3tyBByJ4eJE_s1pNO6nMqcrN4AV9bzIhN38';

        $data = [
            "registration_ids" => $user->device_token,
            "notification" => [
                "title" => 'update order status',
                "body" => __("aliases.status.$order->status"),
                "sound" => "default" // required for sound on ios
            ],
        ];
        $dataString = json_encode($data);
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
        $response = curl_exec($ch);
        // dd($response);
    }
}
