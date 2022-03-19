<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Viajes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Viajes', function (Blueprint $table) {
            $table->id();
            $table->time('time')->default('00:00');
            $table->date('date');
            $table->integer('tickets');
            $table->decimal('price', $precision = 8, $scale = 2);
            $table->decimal('discount',$precision = 8, $scale = 2);
            $table->timestamps();
            $table->unsignedBigInteger('id_lugar')->nullable();
            $table->foreign('id_lugar')->references('id')->on('lugares_turisticos');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('viajes');
    }
}
