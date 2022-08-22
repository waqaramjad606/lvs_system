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

//Route::get('/home', [\App\Http\Controllers\Controller::class,'index'])->name('home');
Route::get('/', [\App\Http\Controllers\Controller::class,'index'])->name('home');
Route::get('/track', [\App\Http\Controllers\Controller::class,'track_page'])->name('track');
Route::get('/verification', [\App\Http\Controllers\Controller::class,'verification_page'])->name('verification');
Route::get('/about', [\App\Http\Controllers\Controller::class,'about_page'])->name('about');
Route::post('/postLogin', [\App\Http\Controllers\Auth\LoginController::class,'postLogin'])->name('login.post');
Route::post('/application_status', [\App\Http\Controllers\Controller::class,'track_application'])->name('application_status');
Route::post('/verification_status', [\App\Http\Controllers\Controller::class,'getVeryfication'])->name('verification_status');
Route::get('/logout', [\App\Http\Controllers\Auth\LoginController::class, 'logout']);


Route::get('/apply', [\App\Http\Controllers\DashboardController::class,'apply_application'])->name('apply_application');
Route::post('/postApplication', [\App\Http\Controllers\DashboardController::class,'submitApplication'])->name('postApplication');
Route::post('/verifyNadraInformation', [\App\Http\Controllers\DashboardController::class,'verify_nadra_info'])->name('verifyNadraInformation');
Route::get('/dashboard', [\App\Http\Controllers\DashboardController::class,'admin_dashboard'])->name('dashboard');
Route::get('/profile', [\App\Http\Controllers\DashboardController::class,'user_Profile'])->name('profile');
Route::post('/accept_application', [\App\Http\Controllers\DashboardController::class,'accpetApplication'])->name('dashboard.accept_application');
Route::post('/reject_application', [\App\Http\Controllers\DashboardController::class,'rejectApplication'])->name('dashboard.reject_application');
Route::group(['middleware' => ['admin']], function () {
//    Route::get('admin-view', 'HomeController@adminView')->name('admin.view');
    Route::get('/users', [\App\Http\Controllers\DashboardController::class,'user_page'])->name('dashboard.users');
    Route::post('/blockUser', [\App\Http\Controllers\DashboardController::class,'blockUser'])->name('blockUser');
    Route::post('/activeUser', [\App\Http\Controllers\DashboardController::class,'activeUser'])->name('activeUser');
    Route::delete('deleteUser/{id}', [\App\Http\Controllers\DashboardController::class,'deleteUser'])->name('deleteUser');
    Route::post('/updateProfile', [\App\Http\Controllers\DashboardController::class,'editProfile'])->name('profile.update');
    Route::get('/loan_application', [\App\Http\Controllers\DashboardController::class,'loan_application_page'])->name('dashboard.loan_application');
    Route::get('/loan_organization', [\App\Http\Controllers\DashboardController::class,'loan_organizations'])->name('dashboard.loan_organizations');
    Route::post('/blockOrganization', [\App\Http\Controllers\DashboardController::class,'blockOrganization'])->name('blockOrganization');
    Route::post('/activeOrganization', [\App\Http\Controllers\DashboardController::class,'activeOrganization'])->name('activeOrganization');
    Route::delete('deleteOrganization/{id}', [\App\Http\Controllers\DashboardController::class,'deleteOrganization'])->name('deleteOrganization');
    Route::post('/addOrganization', [\App\Http\Controllers\DashboardController::class,'addNewOrganization'])->name('addOrganization');
});

Route::group(['middleware' => ['user']], function () {

    Route::get('/applications', [\App\Http\Controllers\DashboardController::class,'loan_application_page'])->name('applications');

});

Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
