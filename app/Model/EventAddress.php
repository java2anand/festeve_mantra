<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class EventAddress extends Model
{
    protected $fillable = ['event_id'];
    
    public function event(){
        return $this->hasOne('App\Model\Event', 'id' ,'event_id');
    }
}
