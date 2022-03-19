<?php

namespace Database\Seeders;

use App\Models\Subdestino;
use Illuminate\Database\Seeder;

class SubdestinoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Subdestino::factory(10)->create();
    }
}
