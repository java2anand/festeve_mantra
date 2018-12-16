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
  </head>