<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Application;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use function PHPUnit\Framework\isNull;

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
        $application = Application::where('cnic_no', '=', $request->cnic_no)->first();
//        $status=$application->status;
        return response()->json($application);

    }

    public function getVeryfication(Request $request)
    {
        $application = Application::where('cnic_no', '=', $request->cnic_no)->first();
        if(!empty($application)){
//            $data[]=array('fname'=> $application->fname,'lname'=>$application->lname);
            echo json_encode($application);
//            'cnic_no'=>$application->cnic_no,'phone'=>$application->phone,'issue_date'=>$application->cnic_no,'home_address'=>$application->home_address,'permanent_address'=>$application->permanent_address
        }else{
            return response()->json('false');
        }

    }

    public function verification_page() {
        return view('verification');
    }

    public function about_page() {
        return view('about');
    }
}
