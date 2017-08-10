<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVuelosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('vuelos', function (Blueprint $table) {
        $table->increments('id');
        $table->String('fecha_salida');
        $table->String('hora_salida');
        $table->String('fecha_llegada');
        $table->String('hora_llegada');
        $table->integer('aviones_id')->unsigned();
        $table->integer('aeropuertos_llegadas_id')->unsigned();
        $table->integer('aeropuertos_salidas_id')->unsigned();
        $table->rememberToken();
        $table->timestamps();
        $table->foreign('aviones_id')->references('id')->on('aviones');
        $table->foreign('aeropuertos_llegadas_id')->references('id')->on('aeropuertos_llegadas');
        $table->foreign('aeropuertos_salidas_id')->references('id')->on('aeropuertos_salidas');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      Schema::dropIfExists('vuelos');
    }
}
