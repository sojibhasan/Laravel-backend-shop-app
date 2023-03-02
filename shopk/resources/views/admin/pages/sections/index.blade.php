@extends('admin.master')

@section('breadcrumb')
    @if(!$is_trash)
        <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.sort sections')</span></li>
    @else
        <li class="breadcrumb-item"><a href="{{route('admin.sections.index')}}">@lang('layout.sort sections')</a></li>
        <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.trash')</span></li>
    @endif
@endsection

@section('content')

    @include('admin.includes.modalBtnAction')

    {!! myDataTable_button([
        __('layout.add section') => route('admin.sections.create'),
      ]) !!}



    {!! myDataTable_table([
        "id"             => 'id',
        "name_ar"        => __('form.label.name ar'),
        "name_en"        => __('form.label.name en'),
        "slug"           => __('form.label.slug'),
        "sub_categories_count" => [__('form.label.count categories'), true , false],
    ]) !!}

@endsection

@section('css')
    <link rel="stylesheet" href="{{asset("assets/myDataTable/data.css")}}">
@endsection

@section('js')
    <script src="{{asset("assets/myDataTable/data.js")}}"></script>
    <script>



        myDataTableColumns({
            name   :  ['id', 'name_ar', 'name_en', 'slug',  'sub_categories_count'],
            class  : {'updated_at': 'notEdit' , 'created_at': 'notEdit', 'sub_categories_count':'notEdit' },
            btn    :  {

                @can('role' , 'section.update')
                'edit'         : '{{route('admin.sections.update' , '')}}'+'/{id}',
                @endcan

                @if(!$is_trash)

                    @can('role' , 'section.destroy')
                    'delete'       : '{{route('admin.sections.destroy' , '')}}'+'/{id}',
                    @endcan

                @else

                    @can('role' , 'section.restore')
                    'restore'      : '{{route('admin.sections.restore' , '')}}'+'/{id}',
                    @endcan

                    @can('role' , 'section.finalDelete')
                    'delete'       : '{{route('admin.sections.finalDelete' , '')}}'+'/{id}',
                    @endcan

                @endif
                'print'        : '#',

            }
        })
    </script>
@endsection
