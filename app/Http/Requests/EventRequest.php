<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EventRequest extends FormRequest
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
            'slug'=>'required|unique:events,slug,'.$id,
            'event_image' => 'mimes:jpeg,jpg,png| max:3072 |dimensions:max_width=360,max_height=210',
            'event_top_banner' => 'mimes:jpeg,jpg,png| max:3072 |dimensions:max_width=1400,max_height=450',
            'event_document' => 'mimes:pdf,doc,docx| max:2048 ',
            'status'=>'required'
        ];
    }
}
