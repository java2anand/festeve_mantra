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

    public function address(){
        return $this->belongsTo('App\Model\EventAddress', 'id','event_id');
    }

    public function seo(){
        return $this->belongsTo('App\Model\EventSeo', 'id','event_id');
    }
}
