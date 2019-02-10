<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

//use Illuminate\Http\Request;
//use Illuminate\Http\Response;

use Validator;
use Auth;
use Socialite;
use App\User;

class AuthController extends Controller
{
    /**
     **_ Redirect the user to the OAuth Provider.
     _**
     **_ @return Response
     _**/
    public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    /**
     _ Obtain the user information from provider.  Check if the user already exists in our
     _ database by looking up their provider_id in the database.
     _ If the user exists, log them in. Otherwise, create a new user then log them in. After that 
     _ redirect them to the authenticated users homepage.
     _
     _ @return Response
     _ **/
    public function handleProviderCallback($provider)
    {
        $user = Socialite::driver($provider)->user();

        $authUser = $this->findOrCreateUser($user, $provider);
        Auth::login($authUser, true);
        //return redirect($this->redirectTo);
        return redirect('/');
    }

    /**
     _ If a user has registered before using social auth, return the user
     _ else, create a new user object.
     _ @param  $user Socialite user object
     _ @param $provider Social auth provider
     _ @return  User
     */
    public function findOrCreateUser($user, $provider)
    {
        $authUser = User::where('email', $user->email)->first();
        if ($authUser) {
            return $authUser;
        }
        $name_arr = explode(' ', $user->name);
        return User::create([
            'first_name'=> $name_arr[0],
            'last_name'=> $name_arr[1],
            'email'    => $user->email,
            'provider' => $provider,
            'provider_id' => $user->id
        ]);
    }
}
