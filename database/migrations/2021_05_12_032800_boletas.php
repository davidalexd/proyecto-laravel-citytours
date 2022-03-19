<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Boletas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boletas', function (Blueprint $table) {
            $table->id();
            $table->integer('quantity');
            $table->decimal('total', $precision = 8, $scale = 2);
            $table->decimal('subtotal', $precision = 8, $scale = 2);
            $table->timestamps();
            $table->unsignedBigInteger('id_travel')->nullable();
            $table->foreign('id_travel')->references('id')->on('viajes');
            $table->unsignedBigInteger('id_user')->nullable();
            $table->foreign('id_user')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('boletas');
    }
}
