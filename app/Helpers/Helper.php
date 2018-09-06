<?php
if (!function_exists('test')) {
    function hello(){
        echo "test helper";
    }
}

if (!function_exists('pr')) {
    function pr($array){
        echo "<pre>";print_r($array);die;
    }
}

?>