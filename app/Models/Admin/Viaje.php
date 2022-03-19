<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Viaje
 *
 * @property $id
 * @property $time
 * @property $date
 * @property $tickets
 * @property $price
 * @property $discount
 * @property $created_at
 * @property $updated_at
 * @property $id_lugar
 *
 * @property Boleta[] $boletas
 * @property LugaresTuristico $lugaresTuristico
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Viaje extends Model
{
    public $timestamps = false;

    static $rules = [
		'time' => 'required|date_format:H:i',
		'date' => 'required|date_format:Y-m-d',
		'tickets' => 'required|integer|between:1,100',
		'price' => 'required:',
		'discount' => 'required|numeric|between:0,99.99',
    ];
    
    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['time','date','tickets','price','discount','id_lugar'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function boletas()
    {
        return $this->hasMany('App\Models\Boleta', 'id_travel', 'id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function lugaresTuristico()
    {
        return $this->hasOne('App\Models\LugaresTuristico', 'id', 'id_lugar');
    }
    

}
