<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlayListDetail extends Model
{
    use HasFactory;
	protected $table = 'playlist_detail';
	protected $guarded = [];
	
	public function detail()
    {
        return $this->HasMany(WishList::class,'id','wishlist_id');
    }
	
}
