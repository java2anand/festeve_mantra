<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Common extends Model {

    //protected $table = 'categories';
    public function getSelectedColumn($name) {
        echo $name;
    }

}
