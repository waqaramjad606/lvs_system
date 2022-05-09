<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Application;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index() {
        return view('index');
    }

    public function login_Page() {
        return view('login');
    }

    public function track_page() {

        return view('Track');
    }

    public function track_application(Request $request)
    {
        $application = Application::all()->where('cnic_no', '=', $request->cnic_no);
//        $status=$application->status;
        return response()->json($application);

    }

    public function verification_page() {
        return view('verification');
    }

    public function about_page() {
        return view('about');
    }
}
