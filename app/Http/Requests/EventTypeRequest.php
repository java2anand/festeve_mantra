<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EventTypeRequest extends FormRequest {

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() {
        $id = $this->route('id');
        return [
            'name' => 'required|unique:event_types,name,' . $id,
            'slug' => 'required|unique:event_types,slug,' . $id,
            'description' => 'required',
            'status' => 'required'
        ];
    }

}
