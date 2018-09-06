<?php

namespace App\Classes;
use App\Model\SiteSetting;

class Common {

    public static function sitesetting(){
        $sitedata = SiteSetting::first();
        return $sitedata;
    }

    public function hello(){
        echo "gfgffft";
    }
}

?>