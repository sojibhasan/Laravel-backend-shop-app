@include('admin.includes.createOption')

<form method="post" action="{{route('admin.products.store')}}" enctype="multipart/form-data">
    @csrf
    <div class="form-row mb-4">



        @include('admin.pages.products.form_create.top_section')

        @include('admin.pages.products.form_create.price')

        @include('admin.pages.products.form_create.checkboxes')

        @include('admin.pages.products.form_create.attributes')

        @include('admin.pages.products.form_create.kurly')
        @include('admin.pages.products.form_create.statements')

        @include('admin.pages.products.form_create.file_upload')

        @include('admin.pages.products.form_create.description')

        @include('admin.pages.products.form_create.categories')


    </div>

    <button type="submit" class="btn btn-primary mt-3">@lang('layout.add product')</button>
</form>
