@extends('student.master')

@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{route('student.showCategories')}}">@lang('layout.add product')</a></li>
    <li class="breadcrumb-item active" aria-current="page"><span>@lang('form.label.select product')</span></li>
@endsection

@section('content')

    <div class="container-fluid mt-5">

        <div class="row">
            @if ($products->count() > 0)
                @foreach($products as $product)
                <div class="col-12 col-md-6 col-lg-4 cover-product">
                    <div class="card component-card_9 mb-2">
                        <div style="height: 250px; overflow:hidden;">
                            <img src="{{asset("assets/images/products/min/small_$product->img")}}" class="card-img-top" alt="widget-card-2">
                        </div>
                        <div class="card-body">

                            <h5 class="card-title" style="height: 70px; overflow:hidden;">{{$product["name_$lang"]}}</h5>

                            <div class="meta-info">
                                <div class="meta-user">
                                    <div class="avatar avatar-sm">
                                        <span class="avatar-title rounded-circle">@lang('form.label.quantity') : {{$product->quantity}}</span>
                                    </div>
                                    <div class="avatar avatar-sm">
                                        <span class="avatar-title rounded-circle">@lang('form.label.price')  : {{$product->regular_price}}</span>
                                    </div>
                                    @if ($product->in_sale)
                                        <div class="user-name">@lang('form.label.discount')  : {{$product->sale_price}}</div>
                                    @else
                                        @lang('form.label.not discount')
                                    @endif
                                </div>

                                <div class="meta-action">
                                </div>

                            </div>
                            <a href="{{route('student.saveProduct' , $product->id)}}" class="btn btn-primary d-block save-product">اضافة الي منتجاتك</a>

                        </div>
                    </div>
                </div>
            @endforeach
            @else
                <div class="alert alert-info col-12">@lang('form.label.not any info') </div>
            @endif
        </div>

        {!! $products->links() !!}

    </div>

@endsection


@section('js')
    <script>
        $('.save-product').on('click' , function (e) {

            e.preventDefault();

            $.ajax({
                method:'post',
                url: $(this).attr('href'),

                beforeSend: _=>{

                    $(this).parents('.cover-product').hide(500)
                },

                success(response){

                    if (response.status  === false){

                        alert('@lang('form.label.message products complete')')

                        location.href = '{{route('student.home')}}'
                    }
                }
            })
        })
    </script>
@endsection
