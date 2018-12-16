<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
{
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
        $id = $this->route('id');
        return [
            'category_name'=>'required|unique:categories,category_name,'.$id,
            'slug'=>'required|unique:categories,slug,'.$id,
            'mini_icon' => 'mimes:jpeg,jpg,png| max:2048 |dimensions:max_width=30,max_height=30',
            'popular_icon' => 'mimes:jpeg,jpg,png| max:2048 |dimensions:max_width=120,max_height=120',
            'top_banner' => 'mimes:jpeg,jpg,png| max:3072 |dimensions:max_width=1400,max_height=450',
            'right_banner' => 'mimes:jpeg,jpg,png| max:3072 |dimensions:max_width=200,max_height=620',
            'event_image' => 'mimes:jpeg,jpg,png| max:3072 |dimensions:max_width=50,max_height=50',
            'status'=>'required'
        ];
    }
}
