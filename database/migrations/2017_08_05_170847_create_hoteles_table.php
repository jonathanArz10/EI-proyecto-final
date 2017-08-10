<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHotelesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('hoteles', function (Blueprint $table) {
        $table->increments('id');
        $table->string('nombre');
        $table->string('telefono');
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
        Schema::dropIfExists('hoteles');
    }
}
