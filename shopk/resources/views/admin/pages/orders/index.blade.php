@extends('admin.master')

@section('breadcrumb')
        <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.orders')</span></li>

@endsection

@section('content')

    @include('admin.includes.modalBtnAction')

    {!! myDataTable_button() !!}



    {!! myDataTable_table([
        "id"              => 'id',
        "status"          => __('form.label.status'),
        "user.name"       => __('form.label.user name'),
        "user.phone"      => __('form.label.phone'),
        "products_count"  => __('form.label.count products'),
        "order_price"     => __('form.label.order price'),
        "discount"        => __('form.label.discount'),
        "shipping_price"  => __('form.label.shipping price'),
        "total_price"     => __('form.label.total order'),
        "created_at"      => __('form.label.created_at'),
    ]) !!}

@endsection

@section('css')

    <link rel="stylesheet" href="{{asset("assets/myDataTable/data.css")}}">
    <style>
        th.theOrderColumn.th-products_count {
            max-width: 100px !important;
            overflow-x: scroll;

        }
    </style>
@endsection

@section('js')
    <script src="{{asset("assets/myDataTable/data.js")}}"></script>
    <script>


        let status = '@json(__('aliases.status'))'

        myDataTableColumns({
            name   :  ['id', 'status', 'user.name', 'user.phone', 'products_count', 'order_price', 'discount', 'shipping_price', 'total_price', 'created_at'],
            class  : {'updated_at': 'notEdit' , 'created_at': 'notEdit', 'products_count': 'notEdit', 'order_price': 'notEdit' , 'discount': 'notEdit', 'shipping_price': 'notEdit', 'total_price': 'notEdit'},
            alias  : {status},
            select : {status},
            btn    :  {

                @can('role' , 'order.update')
                'edit'         : '{{route('admin.orders.update' , '')}}'+'/{id}',
                @endcan

                @can('role' , 'order.show')
                'show'         : '{{route('admin.orders.show' , '')}}'+'/{id}',
                @endcan
                'print'        : '#',

            }
        })
    </script>
@endsection
