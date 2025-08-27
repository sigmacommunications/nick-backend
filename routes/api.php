<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\CountryController;
use App\Http\Controllers\API\CityController;
use App\Http\Controllers\API\StateController;
use App\Http\Controllers\API\HomeController;
use App\Http\Controllers\API\ForgotPasswordController;
use App\Http\Controllers\API\CodeCheckController;
use App\Http\Controllers\API\SettingsController;
use App\Http\Controllers\API\ResetPasswordController;
use App\Http\Controllers\API\PlaylistController;
use App\Http\Controllers\API\PlaceSaveController;
use App\Http\Controllers\API\ReviewController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::post('register', [RegisterController::class, 'register']);
Route::any('login', [RegisterController::class, 'login'])->name('apilogin');



Route::get('location', [homeController::class, 'location']);

    Route::group(['middleware' => ['auth:api','auth:sanctum'], 'prefix' => 'auth'], function () {
    // Route::resource('products', ProductController::class);
    Route::resource('playlists', PlaylistController::class);
	Route::get('playlists_detail/{playlistid}', [PlaylistController::class,'playlists_detail']);
	Route::post('playlists_detail/{playlistid}', [PlaylistController::class,'playlists_detail_add']);
    Route::get('logout', [homeController::class, 'logout']);
    Route::post('change-password', [homeController::class, 'change_password']);
    Route::post('profile-update', [homeController::class, 'profile']);
    
    Route::post('notes', [homeController::class, 'Notes']);
	Route::post('trip_notes', [homeController::class, 'trip_notes']);
	Route::post('trip_notes_publish', [homeController::class, 'trip_notes_publish']);
	Route::get('trip_notes_publish', [homeController::class, 'trip_notes_publish_list']);
	Route::post('trip_notes_publish/{tripid}', [homeController::class, 'trip_notes_update']);
	Route::post('notes/{id}', [homeController::class, 'NotesUpdate']);
    Route::resource('countries', CountryController::class);
	Route::resource('cities', CityController::class);
	Route::resource('states', StateController::class);
		
    Route::post('trip', [homeController::class, 'Trip']);
	Route::post('trip_delete', [homeController::class, 'TripDelete']);
    //list    
    Route::get('notes/index', [homeController::class, 'NotesIndex']);
	Route::delete('notes/{id}', [NotesController::class, 'NotesDelete']);

    Route::get('trip/index/{user_id}', [homeController::class, 'TripIndex']);
	Route::post('preferences', [homeController::class, 'Preferences']);
    
    //Sd Code
	Route::post('place_save/{playlistid}', [PlaceSaveController::class, 'store']);
	Route::post('publish_trip_review/{tripid}', [ReviewController::class, 'publish_trip_review_store']);
		
		
    Route::post('places', [homeController::class, 'LocationCategory']);
	Route::post('places/update/{id}', [homeController::class, 'LocationCategoryUpdate']);
	Route::post('place/review/{placeid}', [homeController::class, 'review']);
	Route::get('places/list', [homeController::class, 'PlaceCategoryList']);
	Route::get('/review_detail/{id}',[homeController::class,'ReviewDetail']);	
    Route::post('wishlist', [homeController::class, 'WishListStore']);
	Route::get('wishlist/fetch', [homeController::class, 'WishList']);
	Route::post('wishlist/delete', [homeController::class, 'WishListDelete']);	
	
		
    Route::get('/product', function () {
        return 'welcome';
    });
});


Route::post('password/email',  ForgotPasswordController::class);
Route::post('password/code/check', CodeCheckController::class);
Route::post('password/reset', [ResetPasswordController::class,'update_password']);