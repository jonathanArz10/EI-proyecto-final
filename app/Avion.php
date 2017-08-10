<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Avion extends Model
{
  public function aerolinea()
  {
    return $this->belongsTo('App\Aerolinea');
  }
}
