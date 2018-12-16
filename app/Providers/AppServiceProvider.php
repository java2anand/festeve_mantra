<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use App\Model\SiteSetting;
use Illuminate\Support\Facades\DB;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        $array_settings = DB::table('site_settings')->select('var_name','var_value')->get();
        $sitedata = array();
        foreach($array_settings as $setting){
            $sitedata[$setting->var_name] = $setting->var_value;
        }
        View::share('sitedata',$sitedata);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
