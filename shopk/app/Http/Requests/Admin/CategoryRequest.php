<?php

namespace App\Http\Requests\Admin;

use ArondeParon\RequestSanitizer\Sanitizers\Slug;
use ArondeParon\RequestSanitizer\Sanitizers\StripTags;
use ArondeParon\RequestSanitizer\Sanitizers\TrimDuplicateSpaces;
use ArondeParon\RequestSanitizer\Traits\SanitizesInputs;
use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
{

    use SanitizesInputs;

    protected $sanitizers = [
        'name_ar' => [
            StripTags::class,
            TrimDuplicateSpaces::class,
        ],

        'name_en' => [
            StripTags::class,
            TrimDuplicateSpaces::class,
        ],

        'slug' => [
            Slug::class,
        ],

        'parent_id' => [
            StripTags::class,
        ],



    ];
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $pagesSection = request()->segment(1) === 'sections' || request()->segment(2) === 'sections';

        return [

            'name_ar'   => ['required' , 'string'  , 'max:50'],
            'name_en'   => ['required' , 'string'  , 'max:50'],
            'slug'      => ['nullable' , 'string'  , 'max:50'],
            'sort'      => ['nullable' , 'integer' , 'max:11'],
            'img'       => ['nullable' , 'mimes:svg', 'max:10000'],
            'parent_id' => [$pagesSection ? 'nullable': 'required' , 'exists:categories,id' , 'max:11'],

        ];
    }
}
