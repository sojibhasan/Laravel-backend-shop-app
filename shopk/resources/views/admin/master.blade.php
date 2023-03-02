<!DOCTYPE html >
<html lang="{{app()->getLocale()}}" dir="ltr">

<head>

    <!-- ///// meta ///// -->
    @include('admin.includes.meta')

    <title>kocart easyshop</title>

    <!-- ///// style css ///// -->
    @include('admin.includes.style')

</head>

    <body>

        @include('admin.includes.load_screen')

        @include('admin.layouts.navbar')

        @include('admin.layouts.sub_navbar')


        <div class="main-container" id="container">

            <div class="overlay"></div>
            <div class="search-overlay"></div>

         <!-- ///// start sidebar ///// -->
            @include('admin.layouts.sidebar')
         <!-- ///// end sidebar ///// -->


         <!-- ****** start page ****** -->
            <div id="content" class="main-content">

                <div class="layout-px-spacing">

                    @yield('content')

                    @include('admin.includes.footer')

                </div>
            </div>
         <!-- ****** end page ****** -->
         </div>
    </body>


@include('admin.includes.script')


</html>
