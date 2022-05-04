<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Application;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function admin_dashboard()
    {

        return view('dashboard');
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
        $user->save();
        return redirect()->route('profile')->with('success', 'Profile updated successfully!');
    }

    public function loan_application_page()
    {
        return view('loan_applications');
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
        $application->save();
        return redirect()->route('apply_application')->with('success', 'Application apply successfully!');
    }


}
