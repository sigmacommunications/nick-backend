<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Locations;

class LocationCategoryController extends Controller
{
    public function index()
    {
        $categories = Locations::all();
        return view('admin.location_categories.index', compact('categories'));
    }

    public function create()
    {
        return view('admin.location_categories.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|unique:locations',
        ]);

        Locations::create(['name' => $request->name]);

        return redirect()->route('location-categories.index')
            ->with('success', 'Location Category created successfully.');
    }

    public function edit($id)
    {
        $category = Locations::findOrFail($id);
        return view('admin.location_categories.edit', compact('category'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|unique:locations,name,' . $id,
        ]);

        $category = Locations::findOrFail($id);
        $category->update(['name' => $request->name]);

        return redirect()->route('location-categories.index')
            ->with('success', 'Location Category updated successfully.');
    }

    public function destroy($id)
    {
        $category = Locations::findOrFail($id);
        $category->delete();

        return redirect()->route('location-categories.index')
            ->with('success', 'Location Category deleted successfully.');
    }
}
