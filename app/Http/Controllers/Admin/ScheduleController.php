<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Schedule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ScheduleController extends Controller
{
    // Display all schedules
    public function index()
    {
        $schedules = Schedule::all(); // Fetch all schedules
        return view('admin.schedules.index', compact('schedules'));
    }

    // Display schedules in a view
    public function view()
    {
        $schedules = Schedule::latest()->take(5)->get(); // Fetch the latest 5 schedules
        return view('admin.schedules.view', compact('schedules'));
    }

    // Show form to create a new schedule
    public function create()
    {
        return view('admin.schedules.create');
    }

    // Store a newly created schedule in storage
    public function store(Request $request)
    {
        // Validate input
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'start_time' => 'required|date_format:H:i',
            'end_time' => 'required|date_format:H:i',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Handle file upload
        if ($request->hasFile('image')) {
            $validated['image'] = $request->file('image')->store('images', 'public');
        }

        Schedule::create($validated);

        return redirect()->route('schedules.index')->with('success', 'Schedule created successfully');
    }

    // Show the form for editing a schedule
    public function edit($id)
    {
        $schedule = Schedule::findOrFail($id);
        return view('admin.schedules.edit', compact('schedule'));
    }

    // Update a schedule in storage
    public function update(Request $request, $id)
    {
        $schedule = Schedule::findOrFail($id);

        // Validate input
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'start_time' => 'required|date_format:H:i',
            'end_time' => 'required|date_format:H:i',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Handle file upload
        if ($request->hasFile('image')) {
            // Delete old image if exists
            if ($schedule->image && Storage::disk('public')->exists($schedule->image)) {
                Storage::disk('public')->delete($schedule->image);
            }

            // Save the new image
            $validated['image'] = $request->file('image')->store('images', 'public');
        }

        $schedule->update($validated);

        return redirect()->route('schedules.index')->with('success', 'Schedule updated successfully');
    }

    // Show a single schedule
    public function show($id)
    {
        $schedule = Schedule::findOrFail($id);
        return view('admin.schedules.show', compact('schedule'));
    }

    // Delete a schedule from storage
    public function destroy($id)
    {
        $schedule = Schedule::findOrFail($id);

        // Delete the image if it exists
        if ($schedule->image && Storage::disk('public')->exists($schedule->image)) {
            Storage::disk('public')->delete($schedule->image);
        }

        $schedule->delete();

        return redirect()->route('schedules.index')->with('success', 'Schedule deleted successfully');
    }
}
