<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\State;
use Validator;

class StateController extends BaseController
{
    public function index(Request $request)
    {
        $states = State::with('country')->where('country_id',$request->country_id)->get();
        return $this->sendResponse($states, 'State List');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'country_id' => 'required|exists:countries,id',
            'name' => 'required|string|max:255|unique:states,name',
            'image' => 'nullable',
        ]);

        if($validator->fails()) {
            return $this->sendError($validator->errors()->first(),500);
        }

        $state = State::create($request->all());
        return $this->sendResponse($state, 'State created successfully');
    }

    public function show(State $state)
    {
        return response()->json($state->load('country'));
    }

    public function update(Request $request, State $state)
    {
        $request->validate([
            'country_id' => 'sometimes|required|exists:countries,id',
            'name' => 'sometimes|required|string|max:255',
            'image' => 'sometimes|nullable|string',
        ]);

        $state->update($request->all());
        return response()->json($state);
    }

    public function destroy(State $state)
    {
        $state->delete();
        return response()->json(['message' => 'State deleted successfully']);
    }
}
