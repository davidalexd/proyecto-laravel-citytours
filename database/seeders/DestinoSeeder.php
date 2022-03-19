<?php

namespace Database\Seeders;

use App\Models\Destino;

use Illuminate\Database\Seeder;

class DestinoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        Destino::factory(5)->create(); //esto sirve para crear los 25 datos fake puestos en la carpeta  factories
   
        /*  llenar datos manualmente a la base de datos
    
        $destino = new Destino();
        $destino ->name="PAMPLONA ALTA";
        $destino ->image= "C:\Users\DavidXeonE52690\Desktop\img\pamplonaAlta";
        $destino ->save();
    */
    }
}
