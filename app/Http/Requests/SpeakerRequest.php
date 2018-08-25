<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SpeakerRequest extends FormRequest
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
            'speaker_name'=>'required|unique:speakers,speaker_name,'.$id,
            /*'image'=>'required',
            'title'=>'required',
            'tag_line'=>'required',
            'description'=>'required',
            'facebook_id'=>'required',
            'twitter_id'=>'required',
            'linked_id'=>'required',
            'instagram_id'=>'required',
            'googleplus_id'=>'required',*/
            'status'=>'required'
        ];
    }
}
