<!DOCTYPE html >
<html lang="{{app()->getLocale()}}" dir="ltr">

<head>

    <!-- ///// meta ///// -->
    @include('student.includes.meta')

    <title>kocart easyshop</title>

    <!-- ///// style css ///// -->
    @include('student.includes.style')

</head>

    <body>

        @include('student.includes.load_screen')

        @include('student.layouts.navbar')

        @include('student.layouts.sub_navbar')


        <div class="main-container" id="container">

            <div class="overlay"></div>
            <div class="search-overlay"></div>

         <!-- ///// start sidebar ///// -->
            @include('student.layouts.sidebar')
         <!-- ///// end sidebar ///// -->


         <!-- ****** start page ****** -->
            <div id="content" class="main-content">

                <div class="layout-px-spacing">

                    @yield('content')

                    @include('student.includes.footer')

                </div>
            </div>
         <!-- ****** end page ****** -->
         </div>
    </body>


@include('student.includes.script')


</html>
