<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * Class Subdestino
 *
 * @property $id
 * @property $name
 * @property $image
 * @property $created_at
 * @property $updated_at
 * @property $id_destination
 *
 * @property Destino $destino
 * @property Lugar[] $lugars
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Subdestino extends Model
{
    use HasFactory;
    static $rules = [
		'name' => 'required',
		'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    ];

    protected $perPage = 5;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['name','image','id_destination'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function destino()
    {
        return $this->hasOne('App\Models\Destino', 'id', 'id_destination');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function lugars()
    {
        return $this->hasMany('App\Models\Lugar', 'idsubdestination', 'id');
    }
    

}
