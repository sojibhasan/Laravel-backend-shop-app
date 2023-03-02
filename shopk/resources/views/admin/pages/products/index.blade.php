@extends('admin.master')

@section('breadcrumb')
    @if(!$is_trash)
        <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.products')</span></li>
    @else
        <li class="breadcrumb-item"><a href="{{route('admin.products.index')}}">@lang('layout.products')</a></li>
        <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.trash')</span></li>
    @endif
@endsection

@section('content')

{{--    @include('includes.modalBtnAction' , ['big' => true])--}}

    {!! myDataTable_button([
       __('layout.add product') => route('admin.products.create'),
      ]) !!}



    {!! myDataTable_table([
        "id"             => 'id',
        "img"            => __('form.label.img'),
        "name_ar"        => __('form.label.name ar'),
        "regular_price"  => __('form.label.price'),
        "sale_price"     => __('form.label.price after discount'),
        "in_sale"        => __('form.label.discount'),
        "is_best"        => __('form.label.best'),
        "is_recommended" => __('form.label.recommended'),
        "updated_at"     => __('form.label.updated_at'),
        "created_at"     => __('form.label.created_at'),
    ]) !!}

@endsection

@section('css')
    <link rel="stylesheet" href="{{asset("assets/myDataTable/data.css")}}">
@endsection

@section('js')
    <script src="{{asset("assets/myDataTable/data.js")}}"></script>
    <script>

        let boolean = {'false':false , 'true':true};

        // colLg = 6;

        myDataTableColumns({
            name   :  ['id', 'img' , "name_ar", 'regular_price' , 'sale_price' , 'in_sale' , 'is_best' , 'is_recommended', 'updated_at', 'created_at'],
            // class  : {'updated_at': 'notEdit' , 'created_at': 'notEdit', 'products_count':'notEdit' },
            // select : {'in_sale':boolean , 'is_best':boolean , 'is_recommended':boolean},
            file   : {'img':"{{asset('assets/images/products/min/small_{img}')}}"},
            btn    :  {

                @can('role' , 'product.update')
                'edit': '{id}',
                @endcan

                @if(!$is_trash)

                        @can('role' , 'product.destroy')
                        'delete': '{{route('admin.products.destroy' , '')}}'+'/{id}',
                        @endcan

                    @else

                        @can('role' , 'product.restore')
                        'restore': '{{route('admin.products.restore' , '')}}'+'/{id}',
                        @endcan

                        @can('role' , 'product.finalDelete')
                        'delete': '{{route('admin.products.finalDelete' , '')}}'+'/{id}',
                        @endcan

                @endif

                'print'        : '#',

            }
        })

        $('body').on('click', '.dataEdit', function(e){

            e.preventDefault();
            location.href = '{{url('admin/products')}}'+'/'+ $(this).attr('href')+'/edit';
        })
    </script>
@endsection
