<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Notes;
use App\Models\Packages;
use App\Models\Place;
use App\Models\Review;
use App\Models\Locations;
use DB;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Http;

class LocationSearchController extends Controller
{
    public function index()
    {
        return view('admin.location.index');
    }

    public function searchLocations(Request $request)
    {
        $query = $request->input('query');

        $apiKey = 'AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM'; // Replace with your actual API Key

        // Make API request to Google Places Text Search API
        $response = Http::get("https://maps.googleapis.com/maps/api/place/textsearch/json", [
            'query' => $query,
            'key' => $apiKey,
        ]);

        if ($response->successful()) {
            $places = $response->json()['results'];
            return response()->json($places);
        } else {
            return response()->json(['error' => 'Unable to fetch places'], 500);
        }
    }

    public function viewPlace($placeId)
    {
        $apiKey = 'AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM'; // Replace with your actual API Key

        // Make API request to Google Places Details API
        $response = Http::get("https://maps.googleapis.com/maps/api/place/details/json", [
            'placeid' => $placeId,
            'key' => $apiKey,
        ]);

        if ($response->successful()) {
            $placeDetails = $response->json()['result'];

            // Pass the place details to the view
            return view('admin.location.view', compact('placeDetails'));
        } else {
            return redirect()->route('location.index')->with('error', 'Unable to fetch place details');
        }
    }

    public function ReviewPlace($placeId)
    {

        $apiKey = 'AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM'; // Replace with your actual API Key

        // Make API request to Google Places Details API
        $response = Http::get("https://maps.googleapis.com/maps/api/place/details/json", [
            'placeid' => $placeId,
            'key' => $apiKey,
        ]);

        if ($response->successful()) {
            $placeDetails = $response->json()['result'];

            // Pass the place details to the view
            return view('admin.location.review', compact('placeDetails'));
        } else {
            return redirect()->route('location.index')->with('error', 'Unable to fetch place details');
        }
    }

    public function RivewStore(Request $request)
    {

        // Validate review data
        $request->validate([
            'review' => 'required|string|max:500',
            'rating' => 'required|integer|between:1,5',
        ]);

            $placeId = $request->placeId;
            $userId = Auth::user()->id;

            $review = new Review();
            $review->user_id = $userId;
            $review->place_id = $placeId;
            $review->review = $request->review;
            $review->rating = $request->rating;
            $review->save();

        return response()->json(['message' => 'Review submitted successfully'], 200);
    }

    public function place()
    {
        // dd('a');
        // $notes = Notes::orderby("created_at","desc")->get();
        $places = Place::orderby("created_at","desc")->get();
        return view('admin.notes.places', compact('places'));
    }

    public function package()
    {
        // dd('a');
        // $notes = Notes::orderby("created_at","desc")->get();
        $package = Packages::orderby("created_at","desc")->get();
        return view('admin.notes.package', compact('package'));
    }

    public function create(){
    }

    public function store(Request $request)
    {
        // return $request;
        DB::beginTransaction();
        try {

            $validator = Validator::make($request->all(), [
                'image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
            ]);

            if ($validator->fails()) {
                return $this->sendError($validator->errors()->first());
            }

            if ($request->hasFile('image')) {
                $image = request()->file('image');
                $fileName = md5($image->getClientOriginalName() . time()) . "PayMefirst." . $image->getClientOriginalExtension();
                $image->move('uploads/storage/notes/', $fileName);
                $notes = asset('uploads/storage/notes/' . $fileName);
            }

            $storage = new Notes();
            $storage->title = $request->title;
            $storage->place_id = $request->place_id;
            $storage->description = $request->description;
            $storage->image = isset($notes) ? $notes : '';
            $storage->save();
            DB::commit();
            return redirect()->back()->with('success', 'Notes Created Successfully');
        } catch (\Exception $e) {
            DB::rollback();

            return back()->withInput()->withErrors(['error' => 'Notes creation failed. Please try again.']);
        }
    }

}
