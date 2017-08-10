<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    public function ciudad(){
    	return $this->belongsTo('App\Ciudad');
    }
}
