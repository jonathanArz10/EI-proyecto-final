<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aeropuerto_llegada extends Model
{
  public function ciudad()
  {
    return $this->belongsTo('App\Ciudad');
  }
}
