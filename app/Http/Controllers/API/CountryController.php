<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Country;
use Auth;
use Validator;

class CountryController extends BaseController
{
    public function index()
    {
        $country = Country::withCount('city')->where('user_id',Auth::id())->get();
        return $this->sendResponse($country, 'Country List');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required|string|max:255',
            'uri' => 'required|string|max:255',
        //    'city_count' => 'required|integer',
        ]);
        if($validator->fails())
        {
            return $this->sendError($validator->errors()->first(),500);
        }
		$input = $request->all();
		$input['user_id'] = Auth::id();
        $country = Country::create($input);
        // return response()->json($country, 201);
        return $this->sendResponse($country, 'Country List');
    }

    public function show(Country $country)
    {
        return response()->json($country);
    }

    public function update(Request $request, Country $country)
    {
        $request->validate([
            'name' => 'sometimes|required|string|max:255',
            'uri' => 'sometimes|required|string|unique:countries,uri,'.$country->id.'|max:255',
        //    'city_count' => 'sometimes|integer|min:0',
        ]);

        $country->update($request->all());
        return response()->json($country);
    }

    public function destroy(Country $country)
    {
        $country->delete();
        return response()->json(['message' => 'Country deleted successfully']);
    }
}
