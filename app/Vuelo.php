<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vuelo extends Model
{
    public function avion()
    {
      return $this->belongsTo('App\Avion');
    }
    public function aeropuerto_salida()
    {
      return $this->belongsTo('App\Aeropuerto_salida');
    }
    public function Aeropuerto_llegada()
    {
      return $this->belongsTo('App\Aeropuerto_llegada');
    }
}
