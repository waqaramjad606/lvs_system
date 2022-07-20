<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Organizations;
use App\Models\Application;
use App\Models\Nadra_information;
use Illuminate\Support\Facades\App;


class DashboardController extends Controller
{
    public function admin_dashboard()
    {
        $pending_application=Application::all()->where('status','=','0')->count();
        $approved_application=Application::all()->where('status','=','1')->count();
        $reject_application=Application::all()->where('status','=','2')->count();
        $total_application=Application::all()->count();
        return view('dashboard',compact('pending_application','approved_application','total_application','reject_application'));
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
        $organizations = Organizations::all();
        return view('apply',compact('organizations'));
    }

    public function sub_loan_application_page()
    {
        $applications = Application::all();
        return view('sub_loan_applications',compact('applications'));
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
//        $application->gname = $request->input('g_name');
//        $application->guarantor_number = $request->input('guarantor_number');

        $check_cnic=$request->input('cnic_no');

        $nadra_verification = Nadra_information::all()->where('cnic', '=', $check_cnic);
        if($nadra_verification->count()>0){
            if($application->save()){
                return response()->json('true');
            }else{
                return response()->json('false');
            }
        }else{
            return response()->json('not_found');
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


    public function blockUser(Request $request)
    {
        $user = User::find($request->id);
        $user->status = 0;
        if($user->save()){
            return response()->json('true');
        }else{
            return response()->json('false');
        }

    }

    public function activeUser(Request $request)
    {
        $user = User::find($request->id);
        $user->status = 1;
        if($user->save()){
            return response()->json('true');
        }else{
            return response()->json('false');
        }

    }

    public function loan_organizations()
    {
        $organizations = Organizations::all();
        return view('organizations',compact('organizations'));
    }
}
