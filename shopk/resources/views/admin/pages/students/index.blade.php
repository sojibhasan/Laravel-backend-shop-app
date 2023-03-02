@extends('admin.master')

@section('breadcrumb')
    @if(!$is_trash)
        <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.students')</span></li>
    @else
        <li class="breadcrumb-item"><a href="{{route('admin.student.index')}}">@lang('layout.students')</a></li>
        <li class="breadcrumb-item active" aria-current="page"><span>@lang('layout.trash')</span></li>
    @endif
@endsection

@section('content')

    @include('admin.includes.modalBtnAction'  , ['big' => true])
    @include('admin.pages.students.points')

    {!! myDataTable_button([
        __('layout.add student') => route('admin.student.create'),
      ]) !!}


    {!! myDataTable_table([
        "id"             => 'id',
        "name"           => __('form.label.name'),
        "img"            => __('form.label.img'),
        "email"          => __('form.label.email'),
        "phone"          => __('form.label.phone'),
        "date"           => __('form.label.date'),
        "university"     => __('form.label.university'),
        "university_id"  => __('form.label.university id'),
        "major"          => __('form.label.major'),
        "limit_products" => __('form.label.count products'),
        "points"         => __('form.label.points'),
        "end_points"     => [__('form.label.end_points') , false , false],
    ]) !!}

@endsection

@section('css')
    <link rel="stylesheet" href="{{asset("assets/myDataTable/data.css")}}">
@endsection

@section('js')
    <script src="{{asset("assets/myDataTable/data.js")}}"></script>
    <script>


        colLg = 6

        myDataTableColumns({
            name   :  ['id', 'name', 'img', 'email', 'phone', 'date', 'university', 'university_id' , 'major' , 'limit_products', 'points', 'end_points'],
            class  : {'updated_at': 'notEdit' , 'created_at': 'notEdit', 'img':'notEdit', 'points':'notEdit', 'end_points':'notEdit',},
            file   : {'img':'{{asset('assets/images/student/{img}')}}'},
            btn    :  {

                @can('role' , 'student.update')
                'edit': '{{route('admin.student.update' , '')}}'+'/{id}',
                @endcan

                @if(!$is_trash)

                    @can('role' , 'student.destroy')
                    'delete': '{{route('admin.student.destroy' , '')}}'+'/{id}',
                    @endcan

                @else

                    @can('role' , 'student.restore')
                    'restore': '{{route('admin.student.restore' , '')}}'+'/{id}',
                    @endcan

                    @can('role' , 'student.finalDelete')
                    'delete': '{{route('admin.student.finalDelete' , '')}}'+'/{id}',
                    @endcan

                @endif

                'orders': ['{{route('admin.student.orders' , '')}}'+'/{id}' , '@lang('form.label.show orders')' , 'btn-primary'],

                @can('role' , 'student.updatePoints')
                'points': ['{{route('admin.student.updatePoints' , '')}}'+'/{id}' , '@lang('form.label.edit points')'],
                @endcan

                'print': '#',

            }
        })


        $('body').on('click', '.points' , function(e){

            e.preventDefault();

            $('#fadeinModal').modal('show')

            $('input#points').val($(this).parents('tr').find('.td_points').text())

            $('#update_points').attr('href', $(this).attr('href'))

        })

        $('body').on('click', '#update_points' , function(e){

            e.preventDefault();

            $('#fadeinModal').modal('hide')

            let points = $('input#points').val();

            $.ajax({
                url: $(this).attr('href'),
                method: 'post',
                data:{points},
            })

            $('.reload-dataTable').click()
        })
    </script>
@endsection
