<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Tour
 *
 * @property $id
 * @property $tour
 * @property $details
 * @property $imagen
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Tour extends Model
{
    public $timestamps = false;
    
    static $rules = [
		'tour' => 'required',
		'details' => 'required',
		'imagen' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['tour','details','imagen'];



}
