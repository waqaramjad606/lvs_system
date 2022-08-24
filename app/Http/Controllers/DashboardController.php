<?php

namespace App\Http\Controllers;

use http\Env\Response;
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
        $pending_application = Application::all()->where('status', '=', '0')->count();
        $approved_application = Application::all()->where('status', '=', '1')->count();
        $reject_application = Application::all()->where('status', '=', '2')->count();
        $total_application = Application::all()->count();
        return view('dashboard', compact('pending_application', 'approved_application', 'total_application', 'reject_application'));
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
        if ($user->save()) {
            return response()->json('true');
        } else {
            return response()->json('false');
        }

    }

    public function loan_application_page()
    {
        $applications = Application::all();
        return view('loan_applications', compact('applications'));
    }

    public function apply_application()
    {
        $organizations = Organizations::all();
        return view('apply', compact('organizations'));
    }

    public function sub_loan_application_page()
    {
        $applications = Application::all();
        return view('sub_loan_applications', compact('applications'));
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

        $application->loan_duration = $request->input('loan_duration');
        $application->dob = $request->input('dob');
        $application->guarantor_name_1 = $request->input('gname_1');
        $application->guarantor_cnic_1 = $request->input('g_number_1');
        $application->guarantor_phone_1 = $request->input('g_cnic_1');
        $application->guarantor_name_2 = $request->input('gname_2');
        $application->guarantor_cnic_2 = $request->input('g_number_2');
        $application->guarantor_phone_2 = $request->input('g_cnic_2');
        $application->marital_status = $request->input('martial_status');
        $application->organization_id = $request->input('organization_id');

        if ($application->save()) {
            return response()->json('true');
        } else {
            return response()->json('false');
        }
    }

    public function verify_nadra_info(Request $request)
    {

        $fname = $request->input('fname');
        $lname = $request->input('lname');
        $cnic_no = $request->input('cnic_no');
        $phone = $request->input('phone');
        $issue_date = $request->input('issuedate');

        $check_cnic = $request->input('cnic_no');

        $error_arr = array();
        try {
            $nadra_verification = Nadra_information::where('cnic', '=', $check_cnic)->first();

            if (isset($nadra_verification) > 0 && $nadra_verification->count()>0) {

                if (strcasecmp($fname, $nadra_verification->first_name) != 0) {
                    $error_arr[] = 'invalid_first_name';
                }
                if (strcasecmp($lname, $nadra_verification->last_name) != 0) {
                    $error_arr[] = 'invalid_last_name';
                }

                if (strcasecmp('AVAILABLE', $nadra_verification->criminal_record) == 0) {
                    $error_arr[] = 'criminal_record_exist';
                }

                if(strcasecmp($fname, $nadra_verification->first_name) == 0 && strcasecmp($lname, $nadra_verification->last_name) ==0 && strcasecmp('AVAILABLE', $nadra_verification->criminal_record) != 0){
                    $nadra_verification->is_verify=1;
                    $nadra_verification->save();
                }

            }else{
                $error_arr=['invalid_cnic'];
            }

            return response()->json($error_arr);

        } catch (Exception $e) {
            dd($e->getMessage());
        }


    }

    public function accpetApplication(Request $request)
    {
        $application = Application::find($request->id);
        $application->status = 1;
        $application->save();
        return response()->json("true");
//        return redirect()->route('dashboard.loan_application')->with('success', 'Application approved successfully');
    }

    public function rejectApplication(Request $request)
    {
        $application = Application::find($request->id);
        $application->status = 2;
        $application->save();
        return response()->json("true");
//        return redirect()->route('dashboard.loan_application')->with('success', 'Application rejected successfully');
    }


    public function blockUser(Request $request)
    {
        $user = User::find($request->id);
        $user->status = 0;
        if ($user->save()) {
            return response()->json('true');
        } else {
            return response()->json('false');
        }

    }

    public function activeUser(Request $request)
    {
        $user = User::find($request->id);
        $user->status = 1;
        if ($user->save()) {
            return response()->json('true');
        } else {
            return response()->json('false');
        }

    }

    public function loan_organizations()
    {
        $organizations = Organizations::all();
        return view('organizations', compact('organizations'));
    }

    public function blockOrganization(Request $request)
    {
        $organization = Organizations::find($request->id);
        $organization->status = 0;
        if ($organization->save()) {
            return response()->json('true');
        } else {
            return response()->json('false');
        }

    }

    public function activeOrganization(Request $request)
    {
        $organization = Organizations::find($request->id);
        $organization->status = 1;
        if ($organization->save()) {
            return response()->json('true');
        } else {
            return response()->json('false');
        }
    }

    public function deleteOrganization($id)
    {
        $organization = Organizations::find($id);
        $organization->delete();
        return redirect()->route('dashboard.loan_organizations')->with('success', 'Organization deleted successfully');
    }

    public function addNewOrganization(Request $request)
    {
        $organization = new Organizations();
        $image=$request->input('image');
        $organization->name = $request->input('name');
        $organization->location = $request->input('address');
        $organization->type = $request->input('type');
        $organization->img_path = "";

        if ($organization->save()) {
            return response()->json('true');
        } else {
            return response()->json('false');
        }
    }
}
