<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
    use HasFactory;

    public function notes()
    {
        return $this->hasMany(\App\Models\Notes::class);
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }
	
	public function user() {
		return $this->belongsTo(User::class);
	}
	public function trips() {
		return $this->belongsToMany(Trip::class, 'place_trip');
	}
}
