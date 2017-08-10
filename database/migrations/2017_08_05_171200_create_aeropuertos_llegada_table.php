<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAeropuertosLlegadaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('aeropuertos_llegadas', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nombre');
        $table->integer('ciudades_id')->unsigned();
        $table->rememberToken();
        $table->timestamps();
        $table->foreign('ciudades_id')->references('id')->on('ciudades');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('aeropuertos_llegadas');
    }
}
