<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    use HasFactory;
	protected $guarded = [];
	
	public function user() {
		return $this->belongsTo(User::class);
	}
	public function places() {
		return $this->belongsToMany(Place::class, 'place_trip');
	}
	
	public function reviews()
	{
		return $this->hasMany(PublishTripReview::class);
	}
}
