<?php

namespace Database\Factories;

use App\Models\Destino;
use Illuminate\Database\Eloquent\Factories\Factory;

class DestinoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Destino::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->randomElement(['Piura','Peru','Japon','Alemania','Brazil','Colombia','Venezuela','Belgica','China','Filiphinas']),
            'image'=> $this-> faker->sentence()
            //'image'=> $this-> faker->paragraph(),
        ];
    }
}
