<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
  public static function lastID() {
   return  Cliente::get()->last()->id;
  }
}
