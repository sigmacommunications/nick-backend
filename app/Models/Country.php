<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;
    // protected $table = 'countries';
    protected $guarded = [];
	
	public function userTrips()
	{
		return $this->hasMany(Trip::class, 'country');
	}
	
	public function city()
	{
		return $this->belongsTo(\App\Models\City::class,'id','country_id');
	}
}
