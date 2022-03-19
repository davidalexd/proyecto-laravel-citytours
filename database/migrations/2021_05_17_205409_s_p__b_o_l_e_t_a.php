<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SPBOLETA extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::unprepared('DROP PROCEDURE IF EXISTS BOLETA');
        DB::unprepared('
        CREATE  PROCEDURE BOLETA(
        fecha date,
        id_lugar int,
        id_travel int,
        cantidad int,
        user int
        )
        BEGIN
        insert into boletas (quantity, total, subtotal, id_travel,id_user) 
        values (cantidad,
        cantidad*(select price from viajes  WHERE date=fecha AND id_lugar=id_lugar),
        cantidad*(select price from viajes  WHERE date=fecha AND id_lugar=id_lugar)+(select discount from viajes WHERE id_lugar=id_lugar and date=fecha),
        id_travel,user);
        END');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
       
    }
}
