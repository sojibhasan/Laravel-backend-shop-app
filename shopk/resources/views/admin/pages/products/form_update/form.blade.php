@include('admin.includes.createOption')
@include('admin.includes.alert_errors')

<form method="post" action="{{route('admin.products.update'  , $product->id)}}" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="form-row mb-4">


        @include('admin.pages.products.form_update.top_section')

        @include('admin.pages.products.form_update.price')

        @include('admin.pages.products.form_update.checkboxes')

        @include('admin.pages.products.form_update.attributes')

        @include('admin.pages.products.form_update.statements')

        @include('admin.pages.products.form_update.kurly')

        @include('admin.pages.products.form_update.file_upload')

        @include('admin.pages.products.form_update.description')

        @include('admin.pages.products.form_update.categories')


    </div>

    <button type="submit" class="btn btn-primary mt-3">@lang('form.label.update product')</button>
</form>
