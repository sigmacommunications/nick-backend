<?php

use App\Http\Controllers\Admin\NotesController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\TransactionsController as AdminTransactionsController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\GamesController;
use App\Http\Controllers\GeneralSettingController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\SubscriptionController;
use App\Http\Controllers\Admin\LocationSearchController;
use App\Http\Controllers\Admin\PreferenceController;
use App\Http\Controllers\Admin\ScheduleController;
use App\Http\Controllers\Admin\LocationCategoryController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Frontend Site
Route::get('/', function () {
    return view('auth.login');
});

Route::get('/signup', [RegisterController::class, 'register_form'])->name('signup');
Route::get('logout', [LoginController::class, 'logout']);
Route::get('account/verify/{token}', [LoginController::class, 'verifyAccount'])->name('user.verify');

Auth::routes();

Route::group(['middleware' => ['auth']], function () {
    Route::resource('userprofile',ProfileController::class);
});

Route::group(['middleware'=>'auth'], function(){
    Route::get('/change_password', [DashboardController::class, 'change_password'])->name('change_password');
    Route::post('/store_change_password', [DashboardController::class, 'store_change_password'])->name('store_change_password');
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('admin.dashboard');
    Route::resource('roles', RoleController::class);
    Route::resource('notes', NotesController::class);
    Route::controller(NotesController::class)->group(function () {
        Route::get('place', 'place')->name('place.new');
        Route::post('place/store', 'placestore')->name('place.store');
        Route::get('package', 'package')->name('package.new');
        Route::post('package/store', 'packagestore')->name('package.store');
    });

    Route::resource('permission', PermissionController::class);
    Route::resource('users', UserController::class);
    Route::resource('schedules', ScheduleController::class);
    Route::resource('subscription', SubscriptionController::class);
	Route::resource('location-categories', LocationCategoryController::class);
    Route::get('/subscription-dash', [SubscriptionController::class, 'UserIndex'])->name('subscription-dash.index');
    Route::get('/admin/subscription/search', [SubscriptionController::class, 'searchPlans'])->name('search.plans');
	// Plans Submit
    Route::post('/plans/submit', [SubscriptionController::class, 'PlanSubmit'])->name('plans.submit');
    // view and review
    Route::resource('location', LocationSearchController::class);
    Route::post('/location/search', [LocationSearchController::class, 'searchLocations'])->name('location.search');

    Route::get('places/{placeId}/view', [LocationSearchController::class, 'viewPlace'])->name('places.view');
    Route::get('places/{placeId}/review', [LocationSearchController::class, 'ReviewPlace'])->name('places.review');
    Route::post('submit-review', [LocationSearchController::class, 'RivewStore'])->name('review.store');

    Route::resource('preferences', PreferenceController::class);
    Route::post('/create/preferences', [PreferenceController::class, 'store'])->name('preferences.store');
    Route::get('/profile', [DashboardController::class, 'profile'])->name('profile.index');
    Route::get('/image', [DashboardController::class, 'imageList'])->name('image.index');

});



Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
