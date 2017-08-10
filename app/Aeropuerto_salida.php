<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aeropuerto_salida extends Model
{
  public function ciudad()
  {
    return $this->belongsTo('App\Ciudad');
  }
}
