<?php
if (!function_exists('test')) {
    function test(){
        echo "External Helper Testing: create a helper.php under app folder then</br>then register in composer.json file in autoload(files) section.";
    }
}

if (!function_exists('pr')) {
    function pr($array){
        echo "<pre>";print_r($array);die;
    }
}

if (!function_exists('enable_query')) {
    function enable_query(){
        DB::enableQueryLog();
    }
}

if (!function_exists('print_query')) {
    function print_query(){
        $query = DB::getQueryLog();
        dd($query);
    }
}

/************** Extra **********************/
/*Reoptimized class loader:php artisan optimize
 * Clear Cache facade value:php artisan cache:clear
 * Clear Route cache:php artisan route:cache
 * Clear View cache:php artisan view:clear
 * Clear Config cache:php artisan config:cache
 */
?>