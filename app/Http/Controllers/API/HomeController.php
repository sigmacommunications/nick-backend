<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use Auth;
use App\Models\User;
use App\Models\Trip;
use App\Models\PlaceTrip;
use App\Models\Receptionist;
use App\Models\Image;
use App\Models\Document;
use App\Models\Signature;
use App\Models\Notes;
use App\Models\Place;
use App\Models\Country;
use App\Models\Review;
use App\Models\City;
use App\Models\Locations;
use App\Models\preferences_to_user;
use App\Models\WishList;
use HasApiTokens;
use Validator;
use Hash;
use Illuminate\Support\Facades\Route;
use Stevebauman\Location\Facades\Location;
use GuzzleHttp\Client;
use Laravel\Ui\Presets\React;
use Illuminate\Validation\Rule;

class HomeController extends BaseController
{
    public function logout(Request $request)
    {
        // Auth::logout();
        $user = Auth::user()->token();
        $user->revoke();
        return $this->sendResponse('Success.', ['success'=>'Logout Successfully']);

    }

     public function change_password(Request $request)
    {
        try
        {
		  $validator = Validator::make($request->all(),[
			  'current_password' => 'required',
			  'new_password' => 'required|same:confirm_password',
			  'confirm_password' => 'required',
		  ]);
		  if($validator->fails()){
			 return $this->sendError($validator->errors()->first());
			}
			$user = Auth::user();

		  if (!Hash::check($request->current_password,$user->password)) {
			return $this->sendError('error', 'current password is Invalid');
		  }
		  $user->password = Hash::make($request->new_password);
		  $user->save();
		  return $this->sendResponse('message', 'Password changed successfully !');
		}
		catch(\Eception $e)
		{
			return $this->sendError($e->getMessage());
		}
    }


    public function profile(Request $request)
    {
        try
        {
            $user = User::findOrFail(Auth::id());
            $validator = Validator::make($request->all(),[
                'name' =>'required|string',
               'image' => 'image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
            ]);
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }

            $profile = $user->image;
			if($request->hasFile('image'))
			{
				$file = request()->file('image');
				$fileName = md5($file->getClientOriginalName() . time()) . "PayMefirst." . $file->getClientOriginalExtension();
				$file->move('uploads/users/', $fileName);
				$profile = asset('uploads/users/'.$fileName);
			}

            $user->first_name = $request->first_name;
            $user->last_name = $request->last_name;
            $user->name = $request->name;
            $user->image = $profile;
            $user->save();
            return response()->json(['success'=>true,'message'=>'Profile Updated Successfully','user_info'=>$user]);
        }
        catch(\Eception $e)
        {
                return $this->sendError($e->getMessage());
        }
    }
    // Create Notes
    public function Notes(Request $request)
	{
		try
		{
			 $validator = Validator::make($request->all(),[
				 'image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
			 ]);

			 if($validator->fails())
			 {
				 return $this->sendError($validator->errors()->first());
			 }

			 if($request->hasFile('image'))
			 {
				 $image = request()->file('image');
				 $fileName = md5($image->getClientOriginalName() . time()) . "PayMefirst." . $image->getClientOriginalExtension();
				 $image->move('uploads/storage/notes/', $fileName);
				 $notes = asset('uploads/storage/notes/'.$fileName);
			 }

			 $storage = new Notes();
			 $storage->title = $request->title;
			 $storage->place_id = $request->place_id;
			 $storage->description = $request->description;
			 $storage->image = isset($notes) ? $notes : '';
			 $storage->save();

			 return response()->json(['success'=>true,'message'=>'Notes Create Successfully']);
         }
         catch(\Exception $e)
         {
                 return $this->sendError($e->getMessage());
         }
     }
	
	public function trip_notes_publish(Request $request)
    {
	    try
        {
			$country = Country::where('name',$request->country)->where('user_id',Auth::id())->first();
			$country->type = $request->type;
			$country->trip_name = $request->trip_name;
			$country->trip_description = $request->trip_description;
			$country->save();
			
            $places = Place::where('city',$request->city)->where('user_id',Auth::id())->get();
			//$trips = Trip::where(['country' => $request->country,'city'=>$request->city,'user_id'=>Auth::id()])->first();
			//if(!$trips)
			//{
			//	Trip::create([
			//		'user_id' => Auth::id(),
			//		'country' => $request->country,
			//		'city' => $request->city,
			//		'name' => $request->trip_name,
			//		'description' => $request->trip_description,
			//		'type' => $request->type,
			//	]);
			//}
			foreach($places as $trip)
			{
				$trip->publish = 1;
				$trip->trip_name = $request->trip_name;
				$trip->save();
			}

            return response()->json(['success'=>true,'message'=>'Trip Publish Successfully']);
        }
        catch(\Exception $e)
        {
             return $this->sendError($e->getMessage());
        }
    }
	
	
	public function trip_notes_update(Request $request,$id)
    {
	    try
        {
			//$trip = Trip::find($id);
			$country = Country::find($id);
			$country->type = $request->type;
			$country->trip_name = $request->trip_name;
			$country->trip_description = $request->trip_description;
			$country->save();
			
			$places = Place::where('country',$country->name)->where('user_id',Auth::id())->get();
			//if($trip)
			//{
			//	$trip->update([
			//		'type' => $request->type,
			//		'name' => $request->trip_name,
			//		'description' => $request->trip_description,
			//	]);
			//}
			
			foreach($places as $trip)
			{
				$trip->publish = 1;
				$trip->trip_name = $request->trip_name;
				$trip->save();
			}
			
            return response()->json(['success'=>true,'message'=>'Trip Update Succeessfully']);
        }
        catch(\Exception $e)
        {
             return $this->sendError($e->getMessage());
        }
    }
	
	public function review(Request $request,$id)
    {
	    try
        {
          	Review::create([
            	'place_id' => $id,
				'user_id' => Auth::id(),
				'review' => $request->text,
				'rating' => $request->rating,
			]);
            return response()->json(['success'=>true,'message'=>'Review Add Successfully']);
        }
        catch(\Exception $e)
        {
             return $this->sendError($e->getMessage());
        }
    }
	
	
	public function trip_notes_publish_list(Request $request)
{
    try 
    {
        $countryName = $request->country;
        $userId = Auth::id(); // get logged-in user id

        $trips = Country::where('name', $countryName)
            ->whereNotNull('trip_name')
			->where('type','public')
            ->get();

        if ($trips->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No trips found for the selected country.',
                'data' => []
            ], 200);
        }

        $response = $trips->map(function ($trip) use ($countryName, $userId) {
            // Only show private trips to their owner
            if ($trip->type === 'private' && $trip->user_id !== $userId) {
                return null; // skip this trip
            }

            $country = Country::where('name', $countryName)->first();
            if (!$country) return null;

            $cityNames = City::where('country_id', $country->id)->pluck('name');

            $cities = $cityNames->map(function ($cityName) {
                $places = Place::where('city', $cityName)->get();
                return [
                    'name' => $cityName,
                    'places' => $places
                ];
            });

            return [
                'country' => $countryName,
                'trip_name' => $trip->trip_name,
                'trip_id' => $trip->id,
                'trip_description' => $trip->trip_description,
                'trip_type' => $trip->type,
                'cities' => $cities,
                'reviews' => $trip->reviews
            ];
        })->filter()->values(); // Remove nulls from the result

        if ($response->isEmpty()) {
            return response()->json([
                'success' => false,
                'message' => 'No accessible trips found for the selected country.',
                'data' => []
            ], 200);
        }

        return response()->json([
            'success' => true,
            'message' => 'Trips fetched successfully.',
            'data' => $response
        ]);

    } catch (\Exception $e) {
        return $this->sendError($e->getMessage());
    }
}

						
	public function trip_notes_publish_listt(Request $request)
{
    try {
		$countryName = $request->country;
       $cities = City::whereHas('country', function($q) use ($countryName) {
    $q->where('name', $countryName);
})->get();

// Step 2: Build response structure
$response = [
    'country' => $countryName,
    'cities' => $cities->map(function($city) {
        // Get trips for this city
        $trips = Trip::where('city', $city->name)->get()->map(function($trip) use ($city) {
            // Get all places for this city (return full data)
            $places = Place::where('city', $city->name)->get();

            return [
                'name' => $trip->name,
                'description' => $trip->description,
                'rating' => $trip->rating, // 👈 yahan rating aa gaya
                'places' => $places
            ];
		});

        return [
            'name' => $city->name,
            'trips' => $trips
        ];
    })
];
		return $response;
        return response()->json([
            'success' => true,
            'message' => 'Trip Publish List',
            'publish_title' => $publishTitle,
            'country' => $country,
            'city' => $city,
        ]);
    } catch (\Exception $e) {
        return $this->sendError($e->getMessage());
    }
}



	
	public function trip_notes(Request $request)
    {
	    try
        {

            $trip = new Place();
            $trip->title = $request->title;
            $trip->user_id = Auth::id();
            $trip->notes = $request->notes;
            $trip->location_name = $request->location_name;
            $trip->lat = $request->lat;
            $trip->lng = $request->lng;
            $trip->country = $request->country_name;
            $trip->city = $request->city_name;
            $trip->flag = $request->flag;
            $trip->image = $request->image;
            $trip->save();

            $storage = new Notes();
            $storage->title = $request->title;
            $storage->place_id = $trip->id;
            $storage->description = $request->description;
            $storage->save();
			
			$country = Country::where('name', 'like', '%' . $request->country_name . '%')->first();
			if($country)
			{	
				$city = City::where('country_id',$country->id)->where('name', 'like', '%' . $request->city_name . '%')->first();
				if(!$city)
				{
					City::create([
						'country_id' => $country->id,  
						'name' => $request->city_name,  
						'image' => $request->city_image,  
					]);
				}
			}
			else
			{
				$countrys = Country::create([
				  'user_id' => Auth::id(),
				  'name' => $request->country_name,  
				  'uri' => $request->country_uri,  
				]);
				
				City::create([
					'country_id' => $countrys->id,  
					'name' => $request->city_name,  
					'image' => $request->city_image,  
				]);
			}

            return response()->json(['success'=>true,'message'=>'Trip Notes Create Successfully']);
        }
        catch(\Exception $e)
        {
                return $this->sendError($e->getMessage());
        }
    }
     // Update Notes
	public function NotesUpdate(Request $request, $id)
	{
				try {
			$validator = Validator::make($request->all(), [
				'image' => 'image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
			]);

			if ($validator->fails()) {
				return $this->sendError($validator->errors()->first());
			}

			$note = Notes::findOrFail($id);

			// Handle image update if a new image is provided
			if($request->hasFile('image'))
			 {
				 $image = request()->file('image');
				 $fileName = md5($image->getClientOriginalName() . time()) . "PayMefirst." . $image->getClientOriginalExtension();
				 $image->move('uploads/storage/notes/', $fileName);
				 $notes = asset('uploads/storage/notes/'.$fileName);
			 }

			$note->title = $request->input('title');
			$note->place_id = $request->input('place_id');
			$note->description = $request->input('description');

			$note->save();

			return response()->json(['success' => true, 'message' => 'Notes updated successfully']);
		} catch (\Exception $e) {
			return $this->sendError($e->getMessage());
		}
	}
    // Image Form
    public function Trip(Request $request)
	{
        try{

         $validator = Validator::make($request->all(),[
             //'image' => 'nullable|string',
         ]);

         if($validator->fails())
         {
             return $this->sendError($validator->errors()->first());
         }
         $storage = new Place();
         $storage->title = $request->title;
		 $storage->user_id = $request->user_id;
         $storage->notes = $request->notes;
		 $storage->location_name = $request->location_name;
		 $storage->lat = $request->lat;
		 $storage->lng = $request->lng;
		 $storage->country = $request->country;
		 $storage->city = $request->city;
		 $storage->flag = $request->flag;
         $storage->image = $request->image;
         $storage->save();

         return response()->json(['success'=>true,'message'=>'Trip Create Successfully']);
         }
         catch(\Exception $e)
         {
                 return $this->sendError($e->getMessage());
         }
     }
	
	public function TripDelete()
	{
			$country = Country::where('name',$request->country)->where('user_id',Auth::id())->first();
			$cities = City::where('country_id',$country->id)->delete();
			$country->delete();
			
            $places = Place::where('country',$request->country)->where('user_id',Auth::id())->delete();

            return response()->json(['success'=>true,'message'=>'Trip Delete Successfully']);
		
	}

    public function NotesIndex(Request $request)
	{
        try{

            if(isset($request->place_id)){
                $notes = Notes::where('place_id',$request->place_id)->get();
            }else{
                $notes = Notes::get();
            }

            return response()->json(['success'=>true,'message'=>'Notes List Successfully','notes' => $notes]);
        }
        catch(\Exception $e)
        {
                return $this->sendError($e->getMessage());
        }
    }

    public function TripIndex(Request $request,$user_id)
	{
		try{

			$trip = Place::with('notes')
					->where('user_id',$user_id)
					->where('country', 'like', '%' . $request->country . '%')
					->where('city', 'like', '%' . $request->city . '%')->get();
            return response()->json(['success'=>true,'message'=>'Trip List Successfully','Trip' => $trip]);
        }
        catch(\Exception $e)
        {
                return $this->sendError($e->getMessage());
        }
    }

	public function LocationCategory(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(),[
                 'name' => 'required|string|unique:locations', 
            ]);

            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
            $placecategory = new Locations();
            $placecategory->name = $request->name;
            $placecategory->save();
            return response()->json(['success'=>true,'message'=>'Place Category Create Successfully','Place'=>$placecategory]);
        }
        catch(\Exception $e)
        {
                return $this->sendError($e->getMessage());
        }
    }

	//Places update
	public function LocationCategoryUpdate(Request $request, $id)
	{
		try {
			$placecategoryUpdate = Locations::findOrFail($id);
			$placecategoryUpdate->name = $request->input('name');
			$placecategoryUpdate->save();
			return response()->json(['success' => true, 'message' => 'Place updated successfully']);
		} catch (\Exception $e) {
			return $this->sendError($e->getMessage());
		}
	}

    public function PlaceCategoryList()
	{
        try{

            $placeCategory = Locations::get();
            return response()->json(['success'=>true,'message'=>'Place List Successfully','Place_Category' => $placeCategory]);
        }
        catch(\Exception $e)
        {
                return $this->sendError($e->getMessage());
        }
    }


	 public function Preferences(Request $request)
     {
		   try {
             $validator = Validator::make($request->all(), [
                 'preferences' => 'required',
             ]);

             if ($validator->fails()) {
                 return $this->sendError($validator->errors()->first());
             }

             $user = Auth::user();
		     $user->preferences()->delete();

             foreach ($request->preferences as $preference) {
                 $pre = new preferences_to_user();
                 $pre->user_id = Auth::user()->id;
                 $pre->preferences = $preference;
                 $pre->save();
             }

     		$user = User::with(['preferences' => function ($query) {
				$query->select('preferences', 'user_id'); // Replace 'user_id' with the actual foreign key column name
			}])->where('id', Auth::user()->id)->first();
             return response()->json(['success' => true, 'message' => 'Preferences Created Successfully','user' => $user]);
         } catch (\Exception $e) {
             return $this->sendError($e->getMessage());
         }
     }


   public function Location(Request $request) 
   {
        $latitude = $request->latitude;//'24.8757813';
        $longitude = $request->longitude;//'67.0697325';

        $location = Location::get($latitude, $longitude);

        // Retrieve nearby points of interest using Google Maps Places API
        $client = new Client();
        $apiKey = 'AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M';
        $interest = request()->place;
        // return $interest;
        $data = [];
        if(isset($interest))
        {
			foreach($interest as $key => $s)
			{
				$response = $client->get('https://maps.googleapis.com/maps/api/place/nearbysearch/json', [
					'query' => [
						'location' => $latitude . ',' . $longitude,
						//'radius' => 5000, // Radius in meters (adjust as needed)
						'keyword' => $s, // User-specified interest (e.g., "food", "sports")
						'key' => $apiKey,
						'rankby' => 'distance'
					],
				]);
				$places = json_decode($response->getBody(), true)['results'];
				foreach ($places as $place) {

					// Skip places without reviews
					if (!isset($place['rating']) || !isset($place['user_ratings_total']) || $place['user_ratings_total'] === 0) {
						continue;
					}
					$photoUrl = '';
					if (isset($place['photos']) && count($place['photos']) > 0) {
						$photoReference = $place['photos'][0]['photo_reference'];
						$photoUrl = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=$photoReference&key=$apiKey";
					}

					$data[] = [
						'id' => $place['place_id'],
						'name' => $place['name'],
						'address' => $place['vicinity'],
						'types' => $place['types'],
						'rating' => $place['rating'],
						'totalRatings' => $place['user_ratings_total'],
						'openNow' => isset($place['opening_hours']['open_now']) ? ($place['opening_hours']['open_now'] ? 'Yes' : 'No') : 'Unknown',
						'image' => $photoUrl,
						'latitude' => $place['geometry']['location']['lat'],
						'longitude' => $place['geometry']['location']['lng'],
					];
				}
			}
        }
        else
        {
            $response = $client->get('https://maps.googleapis.com/maps/api/place/nearbysearch/json', [
                'query' => [
                    'location' => $latitude . ',' . $longitude,
                    //'radius' => 5000, // Radius in meters (adjust as needed)
                   // 'keyword' => , // User-specified interest (e.g., "food", "sports")
                    'key' => $apiKey,
					'rankby' => 'distance'
                ],
            ]);
            $places = json_decode($response->getBody(), true)['results'];
            foreach ($places as $place) {

                // Skip places without reviews
                if (!isset($place['rating']) || !isset($place['user_ratings_total']) || $place['user_ratings_total'] === 0) {
                    continue;
                }
                $photoUrl = '';
                if (isset($place['photos']) && count($place['photos']) > 0) {
                    $photoReference = $place['photos'][0]['photo_reference'];
                    $photoUrl = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=$photoReference&key=$apiKey";
                }

                $data[] = [
                    'id' => $place['place_id'],
                    'name' => $place['name'],
                    'address' => $place['vicinity'],
                    'types' => $place['types'],
                    'rating' => $place['rating'],
                    'totalRatings' => $place['user_ratings_total'],
                    'openNow' => isset($place['opening_hours']['open_now']) ? ($place['opening_hours']['open_now'] ? 'Yes' : 'No') : 'Unknown',
                    'image' => $photoUrl,
                    'latitude' => $place['geometry']['location']['lat'],
                    'longitude' => $place['geometry']['location']['lng'],
                ];
            }
        }

     	return response()->json(['places'=>$data]);
	}

	public function ReviewDetail($id)
	{
		$apiKey = 'AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M';
			$allReviews = [];
			//ChIJufOkkI0-sz4Rd2cC0SWIHy8

			$placeId = $id;
			$allReviews = [];

			// Create a GuzzleHTTP client
			$client = new Client();

			// Make an initial request to the Google Maps Places API - Place Details
			$response = $client->get('https://maps.googleapis.com/maps/api/place/details/json', [
				'query' => [
					'place_id' => $placeId,
					'fields' => 'name,formatted_address,rating,reviews,international_phone_number,website,current_opening_hours',
					'key' => $apiKey,
				],
			]);

			// Parse the initial response and extract the relevant information
		return $placeDetails = json_decode($response->getBody(), true)['result'];
	}

	public function WishListStore(Request $request)
	{
        // print_r($request->all());die;
		try{
		    
			$validator = Validator::make($request->all(), [
		'place_id' => ['required',
			Rule::unique('wish_lists', 'place_id')->where(function ($query) {
					// Yahan aap apni custom condition define kar sakte hain.
					$query->where('user_id', auth()->id()); // For example, check for uniqueness among the current user's wish lists.
				}),
			],
			], [
				'place_id.unique' => 'The Place is already added to your wishlist.', // Custom error message for unique validation
			]);

             if ($validator->fails()) {
                 return $this->sendError($validator->errors()->first());
             }

            $data = new WishList();
			$data->user_id = $request->user_id;
       		$data->place_id = $request->place_id;
       		$data->sub_category = $request->sub_category;
            $data->name = $request->name;
            $data->address = $request->address;
            $data->types = implode(',', $request->types);
            $data->rating = $request->rating;
            $data->totalRatings = $request->totalRatings;
            $data->openNow = $request->openNow;
            $data->image = $request->image;
            $data->latitude = $request->latitude;
            $data->longitude = $request->longitude;
			$data->save();


		 return response()->json(['success'=>true,'message'=>'Wishlist item stored successfully','data'=>$data]);
         }
         catch(\Eception $e)
         {
                 return $this->sendError($e->getMessage());
         }
	}

	public function WishList()
	{

		try{
			$id = Auth::user()->id;
			$wishlist = null;
			$wish = WishList::where('user_id',$id)->get();

			foreach($wish as $data){

             $wishlist[] = [
                 'id' => $data['place_id'],
                 'name' => $data['name'],
				 'address' => $data['address'],
 				 'sub_category' => $data['sub_category'],
				 'types' => $data['types'],
				 'rating' => $data['rating'],
				 'totalRatings' => $data['totalRatings'],
				 'openNow' => $data['openNow'],
				 'image' => $data['image'],
                 'latitude' => $data['latitude'],
				 'longitude' => $data['longitude'],
            ];
         }
            return response()->json(['success'=>true,'message'=>'Wish List Successfully','wish_list' => $wishlist]);
        }
        catch(\Exception $e)
        {
                return $this->sendError($e->getMessage());
        }
	}
	
	
	//public function WishListDelete($id){
		//$deletedCount = WishList::where('id', $id)->delete();
       // return response()->json(['success' => true, 'message' => 'Wish List Successfully Deleted']);
   	//}
	public function WishListDelete(Request $request) 
	{
		$validator = Validator::make($request->all(), [
			'ids' => 'required|array',
			'ids.*' => 'string|distinct',
		]);

		if ($validator->fails()) {
			return response()->json(['success' => false, 'message' => $validator->errors()->first()]);
		}
		$ids = $request->input('ids');
		if (empty($ids)) {
			return response()->json(['success' => false, 'message' => 'No IDs provided for deletion']);
		}
		foreach ($ids as $id) {
			$deletedCount = WishList::where('place_id', $id)->delete();
		}
		return response()->json(['success' => true, 'message' => 'Wish List Successfully Deleted']);
	}
}
