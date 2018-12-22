<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="_token" content="{!! csrf_token() !!}"/>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('ws/images/favicon.ico')}}" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?= isset($page_title) && !empty($page_title) ? $page_title : $sitedata['page_title'] ?></title>
    <meta name="keywords" content="<?= isset($meta_keyword) ? $meta_keyword : $sitedata['meta_keyword'] ?>" />
    <meta name="description" content="<?= isset($meta_description) ? $meta_description : $sitedata['meta_description'] ?>" />
    <meta name="google-site-verification" content="Btb3iQae8vGKY94TZNvDTlpcuMMmhJGrt7TqhF5sNhw" />  
    
    <!-- Open Graph Codes -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="<?php echo isset($event->title) ? $event->title : '';  ?>">
    <meta name="twitter:description" content="<?php echo isset($event->description) ? substr(strip_tags($event->description),0,100) : '';  ?>">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="<?php echo isset($image) ? $image : '';  ?>">

    <meta property="og:url"   		content="{{ URL::current() }}" />
    <meta property="og:site_name"      	content="{{ config('app.name') }}" />
    <meta property="og:type"            content="website" />
    <meta property="og:title"           content="<?php echo isset($event->title) ? $event->title : '';  ?>" />
    <meta property="og:description"     content="<?php echo isset($event->description) ? substr(strip_tags($event->description),0,100) : '';  ?>" />
    <meta property="og:image"           content="<?php echo isset($image) ? $image : '';  ?>" />
    <!-- / Open Graph Codes -->

    <!-- Bootstrap -->
    <link href="{{asset('ws/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('ws/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('ws/css/swiper.min.css')}}" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Facebook Pixel Code -->
        <script>
          !function(f,b,e,v,n,t,s)
          {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
          n.callMethod.apply(n,arguments):n.queue.push(arguments)};
          if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
          n.queue=[];t=b.createElement(e);t.async=!0;
          t.src=v;s=b.getElementsByTagName(e)[0];
          s.parentNode.insertBefore(t,s)}(window, document,'script',
          'https://connect.facebook.net/en_US/fbevents.js');
          fbq('init', '192999948314763');
          fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none"
          src="https://www.facebook.com/tr?id=192999948314763&ev=PageView&noscript=1"
        /></noscript>
    <!-- End Facebook Pixel Code -->
  </head>