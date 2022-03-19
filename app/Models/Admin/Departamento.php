<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Departamento
 *
 * @property $id
 * @property $departamento
 * @property $imagen
 *
 * @property LugaresTuristico[] $lugaresTuristicos
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Departamento extends Model
{
    public $timestamps = false;
    
    static $rules = [
		'departamento' => 'required',
		'imagen' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['departamento','imagen'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function lugaresTuristicos()
    {
        return $this->hasMany('App\Models\LugaresTuristico', 'id_departamento', 'id');
    }
    

}
