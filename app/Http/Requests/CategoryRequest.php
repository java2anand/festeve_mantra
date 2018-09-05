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
            'mini_icon' => 'mimes:jpeg,jpg,png | max:2048 |dimensions:max_width=100,max_height=100',
            'top_banner' => 'mimes:jpeg,jpg,png | max:3072 |dimensions:max_width=1400,max_height=450',
            'status'=>'required'
        ];
    }
}
