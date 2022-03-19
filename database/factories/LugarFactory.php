<?php

namespace Database\Factories;

use App\Models\Lugar;
use Illuminate\Database\Eloquent\Factories\Factory;

class LugarFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Lugar::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->city,
            'details'=> $this-> faker->sentence(),
            'image'=> $this-> faker->sentence(),
            'precio'=>$this->faker->numberBetween($min = 1, $max = 5),
            'idsubdestination'=>$this->faker->numberBetween($min = 1, $max = 10),
            //
        ];
    }
}
