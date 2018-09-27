<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Story extends Model {
    protected $table  = 'event_stories';

    public function category(){
        return $this->hasOne('App\Model\Category', 'id' ,'category_id');
    }
}
