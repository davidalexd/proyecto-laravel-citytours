<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

/**
 * Class LugaresTuristico
 *
 * @property $id
 * @property $lugar_turistico
 * @property $imagen
 * @property $id_departamento
 *
 * @property Departamento $departamento
 * @property Viaje[] $viajes
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class LugaresTuristico extends Model
{
    public $timestamps = false;
    
    static $rules = [
		'lugar_turistico' => 'required',
		'imagen' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        // 'id_departamento' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['lugar_turistico','imagen','id_departamento'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function departamento()
    {
        return $this->hasOne('App\Models\Departamento', 'id', 'id_departamento');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function viajes()
    {
        return $this->hasMany('App\Models\Viaje', 'id_lugar', 'id');
    }
    

}
