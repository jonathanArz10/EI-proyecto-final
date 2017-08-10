<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reservacion extends Model
{
  public function cliente()
  {
    return $this->belongsTo('App\Cliente');
  }
  public function vuelo()
  {
    return $this->belongsTo('App\Vuelo');
  }
}
