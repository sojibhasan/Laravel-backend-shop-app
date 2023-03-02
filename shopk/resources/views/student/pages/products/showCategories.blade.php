@extends('student.master')

@section('breadcrumb')

    <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.add product')</span></li>
@endsection

@section('content')

    <div class="container-fluid mt-5">

        @if ($categories === false)

            <div class="alert alert-danger">@lang('form.label.message products complete')</div>

        @else

            <div class="row">
                @foreach($categories as $category)
                    <div class="col-12 col-md-4 col-lg-3">
                        <a href="{{route('student.showProducts' , $category->id)}}">
                            <div class="card component-card_1 m-2">
                                <div class="card-body">
                                    <h5 class="card-title">{{$category["name_$lang"]}}</h5>
                                    <p class="card-text">@lang('form.label.count products') {{$category->products_not_save_count}}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>

        @endif
    </div>
@endsection
