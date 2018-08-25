<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Event extends Model{
    protected $fillable = ['title', 'slug'];

    public function category(){
        return $this->hasOne('App\Model\Category', 'id' ,'event_category');
    }

    public function organiser(){
        return $this->hasOne('App\Model\Organiser', 'id' ,'organiser_id');
    }

    public function state(){
        return $this->hasOne('App\Model\State', 'state_id' ,'state');
    }

    public function city(){
        return $this->hasOne('App\Model\City', 'city_id' ,'city');
    }

}
