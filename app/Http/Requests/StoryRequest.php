<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoryRequest extends FormRequest
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
            'story_name'=>'required',
            'slug'=>'required|unique:stories,slug,'.$id,
            'image' => 'mimes:jpeg,jpg,png| max:3072 |dimensions:max_width=360,max_height=210',
            'status'=>'required'
        ];
    }
}
