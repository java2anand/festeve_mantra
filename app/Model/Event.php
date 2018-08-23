<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Event extends Model{

    public function category(){
        return $this->hasOne('App/Model/Category', 'event_category');
    }

}
