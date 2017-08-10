<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAvionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('aviones', function (Blueprint $table) {
          $table->increments('id');
          $table->integer('no_asientos');
          $table->integer('cap_maletas');
          $table->integer('aerolineas_id')->unsigned();
          $table->rememberToken();
          $table->timestamps();
          $table->foreign('aerolineas_id')->references('id')->on('aerolineas');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
          Schema::dropIfExists('aviones');
    }
}
