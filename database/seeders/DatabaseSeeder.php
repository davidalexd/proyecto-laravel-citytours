<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    //aplicar php artisan migrate:fresh --seed para generar  tus datos
    public function run()
    {
        //llama al archivo DestinoSeeder para que pueda leer todo el contenido que hayas puesto de dicha modelo
        $this->call(DestinoSeeder::class);

        $this->call(UserSeeder::class);
        
        $this->call(SubdestinoSeeder::class);
        
        $this->call(lugarSeeder::class);


    }
}
