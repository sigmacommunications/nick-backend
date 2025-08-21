<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Packages;
use App\Models\UserPlan;
use Spatie\Permission\Models\Role;
use Auth;
use DB;
use Hash;
use Illuminate\Support\Arr;

class SubscriptionController extends Controller
{
    public function index()
    {
        $plans = Packages::all();
        return view('admin.subscription.index', compact('plans'));
    }

    public function UserIndex(Request $request)
    {
        // Initial query to get all plans
        $plans = Packages::get();
        return view('admin.subscription.subscription-dash', compact('plans'));
    }

    public function searchPlans(Request $request)
    {

        // Fetch the search query from the request
        $search = $request->input('search');
        // Query the database for plans based on the search query
        $plans = Packages::query();

        if ($search) {
            $plans = $plans->where('name', 'like', "%{$search}%")
                        ->orWhere('type', 'like', "%{$search}%")
                        ->orWhere('price', 'like', "%{$search}%");
        }

        // Get the filtered plans and return as JSON
        $plans = $plans->get();

        return response()->json(['plans' => $plans]);
    }

    public function create()
    {
        return view('admin.subscription.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'price' => 'required|numeric',
            'type' => 'required|in:monthly,yearly',
            'description' => 'required|string',
        ]);

        Packages::create($request->all());

        return redirect()->route('subscription.index')->with('success', 'Plan created successfully.');
    }

    public function show(Packages $plan)
    {
        return view('admin.subscription.show', compact('plan'));
    }

    public function edit($id)
    {
        $plan =Packages::where('id',$id)->first();
        return view('admin.subscription.edit', compact('plan'));
    }

    public function update(Request $request,$id)
    {

        $request->validate([
            'name' => 'required',
            'price' => 'required|numeric',
            'type' => 'required|in:monthly,yearly',
            'description' => 'required|string',
        ]);
        $input = $request->all();
        $plan = Packages::find($id);
        $plan->update($input);

        return redirect()->route('subscription.index')->with('success', 'Plan updated successfully.');
    }

    public function destroy(Packages $plan)
    {
        $plan->delete();
        return redirect()->route('subscription.index')->with('success', 'Plan deleted successfully.');
    }

    public function PlanSubmit(Request $request)
    {

        // Save user-plan subscription
        UserPlan::create([
            'user_id' => auth()->id(),
            'plan_id' => $request['plan_id'],
            'plan_type' => $request['plan_type'],
        ]);

        return redirect()->route('subscription.index')->with('success', 'You have successfully subscribed to the plan.');
    }
}
