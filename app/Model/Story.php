<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Story extends Model {
    protected $table  = 'stories';

    public function category(){
        return $this->hasOne('App\Model\Category', 'id' ,'category_id');
    }

    public function author(){
        return $this->hasOne('App\Model\Author', 'id' ,'author_id');
    }
}
