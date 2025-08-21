<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\Api\BaseController as BaseController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\PlaceSave;
use Validator;

class PlaceSaveController extends BaseController
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'place_id' => 'required',
			'playlist_id' => 'required|exists:playlists,id',
        ]);
		
		if($validator->fails())
        {
            return $this->sendError($validator->errors()->first(),500);
        }

        $playlist = PlaceSave::create([
			'playlist_id' => $request->playlist_id,
			'place_id' => $request->place_id,
			'user_id' => Auth::id(),
			'sub_category' => $request->sub_category,
            'name' => $request->name,
            'address' => $request->address,
            'types' => implode(',' ,$request->types),//$request->types
            'rating' => $request->rating,
            'totalRatings' => $request->totalRatings,
            'openNow' => $request->openNow,
            'image' => $request->image,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude
		]);

        return $this->sendResponse($playlist, 'Playlists',200);
    }
}
