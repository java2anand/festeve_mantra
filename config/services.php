<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],
    
    'facebook' => [
        'client_id'     => '2607252755968405',
        'client_secret' => '214f607e6eaf8c8671902309342a00b1',
        'redirect'      => 'http://localhost:8000/auth/facebook/callback',
    ],
    
    'google' => [
        'client_id'     => '77637080620-cmsi97jnfh0237b3aud2g91s272j67cd.apps.googleusercontent.com',
        'client_secret' => 'Oc89dzgieXyEi1d_RhPZLfgD',
        'redirect'      => 'http://localhost:8000/auth/google/callback'
    ],

];
