<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SPTICKETS extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::unprepared('DROP PROCEDURE IF EXISTS STOCK_TICKES');
        DB::unprepared('

        CREATE  PROCEDURE STOCK_TICKES(
        id_travel int,
        cantidad int
        )
        BEGIN
        update viajes  set tickets=tickets - cantidad
        where id =id_travel;
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
