<?php

namespace Database\Factories;

use App\Models\Subdestino;
use Illuminate\Database\Eloquent\Factories\Factory;

class SubdestinoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Subdestino::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [

            'name'=>$this->faker->city,
            'image'=> $this-> faker->sentence(),
            'id_destination'=>$this->faker->numberBetween($min = 1, $max = 5)
            
        ];
    }
}
