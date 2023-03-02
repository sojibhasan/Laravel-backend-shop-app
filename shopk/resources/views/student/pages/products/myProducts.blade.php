@extends('student.master')

@section('breadcrumb')
    <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.my products')</span></li>
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

                            <h5 class="card-title"  style="height: 70px; overflow:hidden;">{{$product["name_$lang"]}}</h5>

                            <div class="meta-info">
                                <div class="meta-user">
                                    <div class="avatar avatar-sm">
                                        <span class="avatar-title rounded-circle">@lang('form.label.quantity') : {{$product->quantity}}</span>
                                    </div>
                                    <div class="avatar avatar-sm">
                                        <span class="avatar-title rounded-circle">@lang('form.label.price') : {{$product->regular_price}}</span>
                                    </div>
                                    @if ($product->in_sale)
                                        <div class="user-name">@lang('form.label.discount') : {{$product->sale_price}}</div>
                                    @else
                                        @lang('form.label.not discount')
                                    @endif
                                </div>

                                <div class="meta-action">
                                </div>

                            </div>
                            <a href="{{route('student.removeProduct' , $product->id)}}" class="btn btn-danger d-block save-product mt-2">@lang('form.label.delete_from my products')</a>

                        </div>
                    </div>
                </div>
            @endforeach
            @else
                <div class="alert alert-info col-12">@lang('form.label.not any info')</div>
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
                }
            })
        })
    </script>
@endsection
