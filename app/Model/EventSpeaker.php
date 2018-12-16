<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class EventSpeaker extends Model
{
    protected $table  = 'event_speakers';

    public function speaker(){
        return $this->hasOne('App\Model\Speaker', 'id' ,'speaker_id');
    }

    public function event(){
        return $this->hasOne('App\Model\Event', 'id' ,'event_id');
    }

}
