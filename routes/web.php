<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', [\App\Http\Controllers\Controller::class,'index'])->name('home');
Route::get('/user_dashboard', [\App\Http\Controllers\Controller::class,'login_Page'])->name('user_dashboard');
Route::post('/postLogin', [\App\Http\Controllers\Auth\LoginController::class,'postLogin'])->name('login.post');
Route::get('/logout', [\App\Http\Controllers\Auth\LoginController::class, 'logout']);


Route::get('/apply', [\App\Http\Controllers\DashboardController::class,'apply_application'])->name('apply_application');
Route::post('/postApplication', [\App\Http\Controllers\DashboardController::class,'submitApplication'])->name('postApplication');

Route::group(['middleware' => ['admin']], function () {
//    Route::get('admin-view', 'HomeController@adminView')->name('admin.view');
    Route::get('/dashboard', [\App\Http\Controllers\DashboardController::class,'admin_dashboard'])->name('dashboard');
    Route::get('/users', [\App\Http\Controllers\DashboardController::class,'user_page'])->name('dashboard.users');
    Route::delete('deleteUser/{id}', [\App\Http\Controllers\DashboardController::class,'deleteUser'])->name('deleteUser');
    Route::get('/profile', [\App\Http\Controllers\DashboardController::class,'user_Profile'])->name('profile');
    Route::post('/updateProfile', [\App\Http\Controllers\DashboardController::class,'editProfile'])->name('profile.update');
    Route::get('/loan_application', [\App\Http\Controllers\DashboardController::class,'loan_application_page'])->name('dashboard.loan_application');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
