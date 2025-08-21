<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Notes;
use App\Models\Packages;
use App\Models\Place;
use App\Models\Locations;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

class NotesController extends Controller
{
    public function index()
    {
        $notes = Notes::with('place')->get();

        // Fetch all notes
        return view('admin.notes.index', compact('notes')); // Return to the index view
    }
    // Show the form to create a new note
    public function create()
    {
        $places = Place::all(); // Adjust as needed, e.g., use pagination if there are many places
        return view('admin.notes.create', compact('places'));
    }
    // Store a newly created note in the database
    public function store(Request $request)
    {
        try {

            // Validate input
            $validator = Validator::make($request->all(), [
                'title' => 'required|string|max:255',
                'place_id' => 'required|string|max:255',
                'description' => 'required|string',
                'image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }

            // Handle image upload
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $fileName = md5($image->getClientOriginalName() . time()) . "." . $image->getClientOriginalExtension();
                $image->move(public_path('uploads/storage/notes/'), $fileName);
                $imagePath = asset('uploads/storage/notes/' . $fileName);
            } else {
                $imagePath = null;
            }

            // Create new note
            Notes::create([
                'title' => $request->title,
                'place_id' => $request->place_id,
                'description' => $request->description,
                'image' => $imagePath,
            ]);

            return redirect()->route('notes.index')->with('success', 'Note created successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }
    // Show the form to edit an existing note
    public function edit($id)
    {
        $note = Notes::findOrFail($id); // Find the note by ID
        return view('admin.notes.edit', compact('note')); // Return to the edit view
    }
    // Update the specified note in the database
    public function update(Request $request, $id)
    {
        try {
            // Validate input
            $validator = Validator::make($request->all(), [
                'title' => 'required|string|max:255',
                'place_id' => 'required|string|max:255',
                'description' => 'required|string',
                'image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }

            // Find the note by ID
            $note = Notes::findOrFail($id);

            // Handle image upload
            if ($request->hasFile('image')) {
                // Delete the old image if it exists
                if ($note->image) {
                    $imagePath = str_replace(asset(''), '', $note->image);
                    if (Storage::exists($imagePath)) {
                        Storage::delete($imagePath);
                    }
                }

                $image = $request->file('image');
                $fileName = md5($image->getClientOriginalName() . time()) . "." . $image->getClientOriginalExtension();
                $image->move(public_path('uploads/storage/notes/'), $fileName);
                $imagePath = asset('uploads/storage/notes/' . $fileName);
            } else {
                $imagePath = $note->image; // Keep the existing image if no new image is uploaded
            }

            // Update the note
            $note->update([
                'title' => $request->title,
                'place_id' => $request->place_id,
                'description' => $request->description,
                'image' => $imagePath,
            ]);

            return redirect()->route('notes.index')->with('success', 'Note updated successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }
    // Remove the specified note from the database
    public function destroy($id)
    {
        try {
            $note = Notes::findOrFail($id);

            // Delete the image if it exists
            if ($note->image) {
                $imagePath = str_replace(asset(''), '', $note->image);
                if (Storage::exists($imagePath)) {
                    Storage::delete($imagePath);
                }
            }

            // Delete the note
            $note->delete();

            return redirect()->route('notes.index')->with('success', 'Note deleted successfully.');
        } catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }
}
