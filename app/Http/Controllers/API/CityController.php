<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\City;
use Validator;

class CityController extends BaseController
{
    public function index(Request $request)
    {
        $country = City::with('country')->where('country_id',$request->country_id)->get();
        return $this->sendResponse($country, 'City List');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'country_id' => 'required|exists:countries,id',
            'name' => 'required|string|max:255|unique:cities,name',
            'image' => 'nullable',
        ]);

        if($validator->fails())
        {
            return $this->sendError($validator->errors()->first(),500);
        }
        $input = $request->all();
        //$profile = null;
        //if($request->hasFile('image')) 
        //{
        //    $file = request()->file('image');
        //    $fileName = md5($file->getClientOriginalName() . time()) . $file->getClientOriginalExtension();
        //    $file->move('uploads/city/', $fileName);  
        //    $profile = asset('uploads/city/'.$fileName);
        //}
        //$input['image'] = $profile;

        City::create($input);
        $city = City::with('country')->get();

        return $this->sendResponse($city, 'City List');
    }

    public function show(City $city)
    {
        return response()->json($city->load('country'));
    }

    public function update(Request $request, City $city)
    {
        $request->validate([
            'country_id' => 'sometimes|required|exists:countries,id',
            'name' => 'sometimes|required|string|max:255',
            'image' => 'sometimes|nullable|string',
        ]);

        $city->update($request->all());
        return response()->json($city);
    }

    public function destroy(City $city)
    {
        $city->delete();
        return response()->json(['message' => 'City deleted successfully']);
    }
}
