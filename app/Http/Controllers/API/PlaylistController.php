<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Playlist;
use App\Models\PlayListDetail;
use App\Http\Controllers\API\BaseController as BaseController;
use Auth;
use Validator;
use App\Models\WishList;
use App\Models\PlaceSave;

class PlaylistController extends BaseController
{
    public function index()
    {
		$data = Playlist::where('user_id',Auth::id())->get();
//        return response()->json(Playlist::all(), 200);
		return $this->sendResponse($data, 'Playlists',200);
    }

    // ✅ 2. Create Playlist
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required|string|max:255',
			'user_id' => 'required|exists:users,id',
        ]);
		
		if($validator->fails())
        {
            return $this->sendError($validator->errors()->first(),500);
        }

        $playlist = Playlist::create($request->all());

        return $this->sendResponse($playlist, 'Playlists',200);
    }

    // ✅ 3. Show Single Playlist
    public function show($id)
    {
        $playlist = Playlist::find($id);
        if (!$playlist) {
            return response()->json(['message' => 'Playlist not found'], 404);
        }

        return response()->json($playlist, 200);
    }

    // ✅ 4. Update Playlist
    public function update(Request $request, $id)
    {
        $playlist = Playlist::find($id);
        if (!$playlist) {
            return response()->json(['message' => 'Playlist not found'], 404);
        }

        $request->validate([
            'name' => 'sometimes|required|string|max:255',
        ]);

        $playlist->update($request->all());

        return response()->json($playlist, 200);
    }

    // ✅ 5. Delete Playlist
    public function destroy($id)
    {
        $playlist = Playlist::find($id);
		$playlistdetail = PlayListDetail::where('playlist_id',$id)->delete();
        //if (!$playlist) {
			
        //    return response()->json(['message' => 'Playlist not found'], 404);
        //}

        $playlist->delete();
        return response()->json(['message' => 'Playlist deleted'], 200);
    }

	public function playlists_detail(Request $request,$id)
	{
		
		
		//$PlayList = PlayListDetail::with('detail')->where('playlist_id',$id)->get();
		$PlayList = PlaceSave::where('playlist_id',$id)->get();
		//return response()->json($PlayList, 200);
		return $this->sendResponse($PlayList, 'Playlist Detail Data',200);
	}
	
	public function playlists_detail_add(Request $request,$id)
	{
		
		$validator = Validator::make($request->all(),[
			'wishlist_id' => 'required|exists:wish_lists,id',
        ]);
		
		if($validator->fails())
        {
            return $this->sendError($validator->errors()->first(),500);
        }
		
		$wishlist = WishList::find($request->wishlist_id);

		if (!$wishlist) {
			return response()->json(['message' => 'Wishlist not found'], 404);
		}

		// Playlist me naye record insert karein
		$playlist = PlayListDetail::create([
			'wishlist_id' => $request->wishlist_id,
			'playlist_id' => $id,
		]);

		return response()->json(['message' => 'Wishlist moved to Playlist successfully']);
	}

}
