<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Application;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function admin_dashboard()
    {
        $pending_application=Application::all()->where('status','=','0')->count();
        $approved_application=Application::all()->where('status','=','1')->count();
        $total_application=Application::all()->count();
        return view('dashboard',compact('pending_application','approved_application','total_application'));
    }

    public function user_page()
    {
        $users = User::all()->where('user_type', '=', '2');
        return view('users', compact('users'));
    }

    public function deleteUser($id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect()->route('dashboard.users')->with('success', 'User deleted successfully');
    }

    public function user_Profile()
    {
        $user = Auth::user();
        return view('profile', compact('user'));
    }

    public function editProfile(Request $request)
    {
        $user = User::find($request->user_id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->cnic_no = $request->cnic_no;
//        Hash::make($request->new_password);
//        $user->password = Hash::make($request->name);
        if($user->save()){
            return response()->json('true');
        }else{
            return response()->json('false');
        }

    }

    public function loan_application_page()
    {
        $applications = Application::all();
        return view('loan_applications',compact('applications'));
    }

    public function apply_application()
    {
        return view('apply');
    }

    public function submitApplication(Request $request)
    {
        $application = new Application();
        $application->fname = $request->input('fname');
        $application->lname = $request->input('lname');
        $application->cnic_no = $request->input('cnic_no');
        $application->phone = $request->input('phone');
        $application->issue_date = $request->input('issuedate');
        $application->home_address = $request->input('homeaddress');
        $application->permanent_address = $request->input('permanentaddress');
//        $application->save();
        if($application->save()){
            return response()->json('true');
        }else{
            return response()->json('false');
        }

    }

    public function accpetApplication(Request $request)
    {
        $application = Application::find($request->id);
        $application->status=1;
        $application->save();
        return response()->json("true");
//        return redirect()->route('dashboard.loan_application')->with('success', 'Application approved successfully');
    }

    public function rejectApplication(Request $request)
    {
        $application = Application::find($request->id);
        $application->status=2;
        $application->save();
        return response()->json("true");
//        return redirect()->route('dashboard.loan_application')->with('success', 'Application rejected successfully');
    }


}
