<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class HelperServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //if single helper file
        /*$file = app_path('Helpers/Helper.php');
        if (file_exists($file)) {
            require_once($file);
        }*/

        //for multiple helper
        foreach (glob(app_path() . '/Helpers/*.php') as $file) {
            require_once($file);
        }
    }
}
