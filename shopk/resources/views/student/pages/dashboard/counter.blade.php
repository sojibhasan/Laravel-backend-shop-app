<div class="m-5">
    <div class="row">

        <div class="four col-md-3">
            <a>
                <div class="counter-box colored "> <i class="fa fa-thumbs-o-up"></i> <span class="counter">{{$student->points}}</span>
                    <p>@lang('form.label.your balance')</p>
                </div>
            </a>
        </div>

        <div class="four col-md-3">
            <a>
                <div class="counter-box colored "> <i class="fa fa-thumbs-o-up"></i> <span class="counter">{{$student->endPoints}}</span>
                    <p>@lang('form.label.points available')</p>
                </div>
            </a>
        </div>

        <div class="four col-md-3">
            <a>
                <div class="counter-box colored "> <i class="fa fa-thumbs-o-up"></i> <span class="counter">{{$student->limit_products}}</span>
                    <p>@lang('form.label.products available')</p>
                </div>
            </a>
        </div>

        <div class="four col-md-3">
            <a>
                <div class="counter-box colored "> <i class="fa fa-thumbs-o-up"></i> <span class="counter">{{$added_products_count}}</span>
                    <p>@lang('form.label.products now')</p>
                </div>
            </a>
        </div>


    </div>
</div>
