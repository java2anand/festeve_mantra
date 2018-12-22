<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
//use Illuminate\Support\Facades\Auth;
use Validator;
use Auth;

class LoginController extends Controller {
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

    /**use Auth;

     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    /*public function __construct() {
        //$this->middleware('guest')->except('logout');
        $this->middleware('guest', ['except' => ['logout', 'userLogout']]);
    }

    public function userLogout() {
        Auth::guard('web')->logout();
        return redirect('/');
    }*/
    
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    protected function username() {
        return 'email';
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');
        $rules = ['email' => 'required|email|max:255',
            'password' => 'required'
        ];

        $validation = Validator::make($credentials, $rules);
        $errors = $validation->errors();
        $errors = json_decode($errors);
        if ($validation->passes()) {
            if (Auth::attempt([
                    'email' => trim($request->email),
                    'password' => $request->password,
                ], $request->has('remember'))) {
                return response()->json(['redirect' => true, 'success' => true], 200);
            } else {
                $message = 'Invalid username or password';
                return response()->json(array('error' => $message), 400);
            }
        } else {
            return response()->json($errors, 400);
        }
        
        
        /*$credentials = $request->only($this->username(), 'password');
        $authSuccess = Auth::attempt($credentials, $request->has('remember'));
        //print_r($authSuccess);die;
        if($authSuccess) {
            $request->session()->regenerate();
            return response(['success' => true], Response::HTTP_OK);
        }

        return
            response([
                'success' => false,
                'message' => 'Auth failed (or some other message)'
            ], Response::HTTP_OK);*/
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->flush();
        $request->session()->regenerate();

        return redirect('/');
    }

}
