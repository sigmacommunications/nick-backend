<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\Api\BaseController as BaseController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\PublishTripReview;
use Validator;

class ReviewController extends BaseController
{
	public function publish_trip_review_store(Request $request,$id)
	{
		try
		{
			//return Auth::user()->role;
			$validator = Validator::make($request->all(),[
			//	'trip_id' =>'required|exists:trips,id',
				'rating' =>'required',
				'text' =>'string',
			]);
			if($validator->fails())
			{
				return $this->sendError($validator->errors()->first(),500);
			}

			//return $assign_user_id;
			$review = PublishTripReview::create([
				'trip_id' => $id,
				'user_id' => Auth::user()->id,
				'rating' => $request->rating,
				'text' => $request->text,
			]);

			return response()->json(['success'=>true,'message'=>'Review Created Successfully','review'=>$review]);

		}
		catch(\Exception $e)
		{
			return $this->sendError($e->getMessage());
		}
	}
}