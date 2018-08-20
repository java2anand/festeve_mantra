<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class EventType extends Model
{
    protected $fillable = [
    	'name', 'description', 'status'
    ];
}
