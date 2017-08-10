<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReservacionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('reservaciones', function (Blueprint $table) {
        $table->increments('id');
        $table->integer('no_asiento');
        $table->integer('vuelos_id')->unsigned();
        $table->integer('clientes_id')->unsigned();
        $table->rememberToken();
        $table->timestamps();
        $table->foreign('vuelos_id')->references('id')->on('vuelos');
        $table->foreign('clientes_id')->references('id')->on('clientes');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      Schema::dropIfExists('reservaciones');
    }
}
