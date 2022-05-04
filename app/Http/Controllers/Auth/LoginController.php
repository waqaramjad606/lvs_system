<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function postLogin(Request $request)
    {
        $request->validate([
            'cnic_no' => 'required',
            'password' => 'required',
        ]);

        $credentials = $request->only('cnic_no', 'password');
        $user = User::where('cnic_no','=',$request->cnic_no)->first();
        if($user){
            return redirect('dashboard');
        }else{
            return back()->with('fail','This cnic is not register');
        }

//        if (Auth::attempt($credentials)) {
//            return redirect()->intended('dashboard')
//                ->withSuccess('You have Successfully loggedin');
//        }
//
//        return redirect("login")->withSuccess('Oppes! You have entered invalid credentials');
    }

    public function logout() {
//        Session::flush();
        Auth::logout();

        return Redirect('login');
    }

}
