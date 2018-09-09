<?php

namespace App\Classes;
use App\Model\SiteSetting;

class Common {

    public static function test(){
        echo "External Class Testing: create a helper.php under app folder then</br>then register in composer.json file in autoload(files) section.";
    }

    public static function sitesetting(){
        $sitedata = SiteSetting::first();
        return $sitedata;
    }


}

?>