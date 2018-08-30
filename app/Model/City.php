<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table  = 'tbl_city';

    //protected $primaryKey = 'uuid'; // it doesn't have to be "id"
    //public $incrementing = false; // and it doesn't even have to be auto-incrementing!
    //protected $perPage = 25; // Yes, you can override pagination count PER MODEL (default 15)
    //const CREATED_AT = 'created_at';
    //const UPDATED_AT = 'updated_at'; // Yes, even those names can be overridden
    //public $timestamps = false; // or even not used at all
}
