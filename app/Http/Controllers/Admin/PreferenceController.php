<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Locations;
use App\Models\preferences_to_user;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use DB;
use Hash;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Http;



class PreferenceController extends Controller
{
    // public function index()
    // {
    //     $plans = Packages::all();
    //     return view('admin.subscription.index', compact('plans'));
    // }

    // public function UserIndex()
    // {
    //     $plans = Packages::all();
    //     return view('admin.subscription.subscription-dash', compact('plans'));
    // }
	
	public function create()
    {
        // Get all locations from the database
        $locations = Locations::get();

        // Define the base URL for Google Places API
        $googleApiUrl = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json';

        // Your Google API key (store in .env file)
		$apiKey = 'AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM';

        // Loop through each location to get dynamic Google data
        foreach ($locations as $location) {
            // Send a request to the Google Places API to fetch place details
            $response = Http::get($googleApiUrl, [
                'input' => $location->name, // The location name you're searching for
                'inputtype' => 'textquery',
                'fields' => 'formatted_address,name,photos,types,icon',
                'key' => $apiKey,
            ]);

            // Check if the response is successful
            if ($response->successful() && $response->json()['candidates']) {
                $place = $response->json()['candidates'][0];

                // Assign the label, photo, and icon from the Google Places response
                $location->label = $place['name'] ?? 'Default Label';
                $location->photo = isset($place['photos'][0]['photo_reference'])
                                    ? 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=' . $place['photos'][0]['photo_reference'] . '&key=' . $apiKey
                                    : 'https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png';
                $location->icon = $place['icon'] ?? 'https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png';
            } else {
                // If API fails, set default values
                $location->label = 'Unknown Location';
                $location->photo = 'https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png';
                $location->icon = 'https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png';
            }
        }

        // Pass the locations with Google data to the view
        return view('admin.preferences.create', compact('locations'));
    }

    public function store(Request $request)
    {
        try {
            // Validate the preferences structure
            $validator = Validator::make($request->all(), [
                'preferences' => 'required|array',
                'preferences.*.id' => 'required|string',
                'preferences.*.name' => 'required|string',
                'preferences.*.label' => 'required|string',
                'preferences.*.icon' => 'nullable|string',
                'preferences.*.photo' => 'nullable|url',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }

            $user = Auth::user();

            // Delete previous preferences
            $user->preferences()->delete();

            $formattedPreferences = [];

            // Format the new preferences
            foreach ($request->preferences as $preference) {
                $formattedPreferences[] = [
                    "id" => $preference['id'],
                    "name" => $preference['name'],
                    "label" => $preference['label'],
                    "icon" => $preference['icon'] ?? 'default-icon',
                    "preferences" => [
                        [
                            "id" => $preference['id'],
                            "name" => $preference['name'],
                            "photo" => $preference['photo'] ?? 'default-photo-url',
                        ],
                    ],
                ];
            }

            // Save preferences in the database
            foreach ($formattedPreferences as $formattedPreference) {
                $pre = new preferences_to_user();
                $pre->user_id = $user->id;
                $pre->preferences = json_encode($formattedPreference); // Store formatted JSON
                $pre->save();
            }

            return redirect()->back()->with('success', 'Preferences Saved Successfully');
        } catch (\Exception $e) {
            session()->flash('error', $e->getMessage());
            return redirect()->back();
        }
    }

}
