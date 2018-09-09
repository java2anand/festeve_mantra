<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Event extends Model{
    protected $fillable = ['title', 'slug'];

    //protected $primaryKey = 'uuid'; // it doesn't have to be "id"
    //public $incrementing = false; // and it doesn't even have to be auto-incrementing!
    //protected $perPage = 25; // Yes, you can override pagination count PER MODEL (default 15)
    //const CREATED_AT = 'created_at';
    //const UPDATED_AT = 'updated_at'; // Yes, even those names can be overridden
    //public $timestamps = false; // or even not used at all

    public function category(){
        return $this->hasOne('App\Model\Category', 'id' ,'event_category');
    }

    public function organiser(){
        return $this->hasOne('App\Model\Organiser', 'id' ,'organiser_id');
    }

    public function address(){
        return $this->belongsTo('App\Model\EventAddress', 'id','event_id');
    }

    public function seo(){
        return $this->belongsTo('App\Model\EventSeo', 'id','event_id');
    }

    //accessors
    /*public function getTitleAttribute($value){
        return ucfirst($value);
    }*/

    //mutators
    /*public function setNameAttribute($value){
        $this->attributes['title'] = strtolower($value);
    }*/
}
