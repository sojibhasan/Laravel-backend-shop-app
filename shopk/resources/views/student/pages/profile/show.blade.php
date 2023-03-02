@extends('student.master')

@section('breadcrumb')
    <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.My Profile')</span></li>
@endsection

@section('content')

    <div class="col-12 mt-5">

    @include('student.includes.alert_success')

    @include('student.includes.alert_errors')

        <div class="card  shadow bg-info">
            <div class="card-header  text-black border-0">
                <div class="row align-items-center">
                    <div class="col-8">
                        <h3 class="mb-0 text-white">@lang('form.label.account info')</h3>
                    </div>
                </div>
            </div>
            <div class="card-body bg-light">
                @include('student.pages.profile.form_update_img')
                @include('student.pages.profile.form_update_info')
                @include('student.pages.profile.form_update_password')
            </div>
        </div>
    </div>


@endsection
