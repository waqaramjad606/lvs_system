<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class loginController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
//    protected $redirectTo = RouteServiceProvider::HOME;


    public function __construct() {
        $this->middleware('guest')->except('logout');
    }

    protected function credentials(Request $request) {
        return [
            'cnic_no'    => $request->cnic_no,
            'password' => $request->password,
            'status'   => 1,
        ];
    }

//    public function postLogin(Request $request) {
//        $this->validateLogin($request);
//    }

//    protected function validateLogin(Request $request) {
//
//        $request->validate([
//            'cnic_no'      => 'required|string',
//            'password'             => 'required|string',
//            ]);
//    }

//    protected function authenticated(Request $request, $user) {
//        if ($user->status != 1) {
//            $errors = [$this->username() => _lang('Your account is not active !')];
//            Auth::logout();
//            return back()->withInput($request->only($this->username(), 'remember'))
//                ->withErrors($errors);
//        }
//    }



//    public function logout() {
////        Session::flush();
//        Auth::logout();
//
//        return Redirect('login');
//    }

}
