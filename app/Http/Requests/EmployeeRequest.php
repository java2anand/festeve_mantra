<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
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
            'name'=>'required|unique:employees,name,'.$id,
            'image' => 'mimes:jpeg,jpg,png| max:3072 |dimensions:max_width=150,max_height=150',
            'status'=>'required'
        ];
    }
}
