<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model {
    protected $table  = 'categories';

    public function children(){
        return $this->hasMany( 'App\Model\Category', 'parent_id', 'id' );
    }

    public function parent(){
        return $this->hasOne( 'App\Model\Category', 'id', 'parent_id' );
    }

    
}
