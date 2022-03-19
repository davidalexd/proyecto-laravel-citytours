<?php

namespace Database\Seeders;

use App\Models\Lugar;
use Illuminate\Database\Seeder;

class lugarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Lugar::factory(15)->create();
    }
}
