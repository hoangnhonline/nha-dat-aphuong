<!DOCTYPE html>
<html lang="en-US">
    <head>
        <title>@yield('title')</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="robots" content="index,follow"/>
        <meta http-equiv="content-language" content="vi"/>
        <meta name="description" content="@yield('site_description')"/>
        <meta name="keywords" content="@yield('site_keywords')"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
        <link rel="shortcut icon" href="@yield('favicon')" type="image/x-icon"/>
        <link rel="canonical" href="{{ url()->current() }}"/>        
        <meta property="og:locale" content="vi_VN" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="@yield('title')" />
        <meta property="og:description" content="@yield('site_description')" />
        <meta property="og:url" content="{{ url()->current() }}" />
        <meta property="og:site_name" content="cahatvui.com" />
        <?php $socialImage = isset($socialImage) ? $socialImage : $settingArr['banner']; ?>
        <meta property="og:image" content="{{ Helper::showImage($socialImage) }}" />
        <meta name="csrf-token" content="{{ csrf_token() }}" />
        <meta name="twitter:card" content="summary" />
        <meta name="twitter:description" content="@yield('site_description')" />
        <meta name="twitter:title" content="@yield('title')" />        
        <meta name="twitter:image" content="{{ Helper::showImage($socialImage) }}" />
        <link rel="icon" href="{{ URL::asset('assets/img/favicon.ico') }}" type="image/x-icon">
        <link rel="shortcut icon" href="{{ URL::asset('assets/img/favicon.png') }}" type="image/png">
        <link rel="stylesheet" href="{{ URL::asset('assets/css/bootstrap.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ URL::asset('assets/css/bootstrap-responsive.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ URL::asset('assets/libraries/chosen/chosen.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ URL::asset('assets/libraries/bootstrap-fileupload/bootstrap-fileupload.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ URL::asset('assets/libraries/jquery-ui-1.10.2.custom/css/ui-lightness/jquery-ui-1.10.2.custom.min.css') }}" type="text/css">
        <link rel="stylesheet" href="{{ URL::asset('assets/css/realia-blue.css') }}" type="text/css" id="color-variant-default">
        <link rel="stylesheet" href="#" type="text/css" id="color-variant">
        <!-- ===== Style CSS ===== -->
        <link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/css/style.css') }}">
        <title>Realia | HTML Template</title>
    </head>
    <body>
        <div id="wrapper-outer" >
            <div id="wrapper">
                <div id="wrapper-inner">
                    <!-- BREADCRUMB -->
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="row">
                                <div class="span12">
                                    <ul class="breadcrumb pull-left">
                                        <li><a href="index.html">Home</a></li>
                                    </ul>
                                    <!-- /.breadcrumb -->
                                    <div class="account pull-right">
                                        <ul class="nav nav-pills">
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="registration.html">Registration</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /.span12 -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.container -->
                    </div>
                    <!-- /.breadcrumb-wrapper -->
                    <!-- HEADER -->
                    <div id="header-wrapper">
                        <div id="header">
                            <div id="header-inner">
                                <div class="container">
                                    <div class="navbar">
                                        <div class="navbar-inner">
                                            <div class="row">
                                                <div class="logo-wrapper span4">
                                                    <a href="#nav" class="hidden-desktop" id="btn-nav">Toggle navigation</a>
                                                    <div class="logo">
                                                        <a href="index.html" title="Home">
                                                        <img src="{{ URL::asset('assets/img/logo.png') }}" alt="Home">
                                                        </a>
                                                    </div>
                                                    <!-- /.logo -->
                                                    <div class="site-name">
                                                        <a href="/" title="Home" class="brand">Realia</a>
                                                    </div>
                                                    <!-- /.site-name -->
                                                    <div class="site-slogan">
                                                        <span>Real estate &amp; Rental<br>made easy</span>
                                                    </div>
                                                    <!-- /.site-slogan -->
                                                </div>
                                                <!-- /.logo-wrapper -->
                                                <div class="info">
                                                    <div class="site-email">
                                                        <a href="mailto:info@byaviators.com">info@byaviators.com</a>
                                                    </div>
                                                    <!-- /.site-email -->
                                                    <div class="site-phone">
                                                        <span>333-666-777</span>
                                                    </div>
                                                    <!-- /.site-phone -->
                                                </div>
                                                <!-- /.info -->
                                                <a class="btn btn-primary btn-large list-your-property arrow-right" href="list-your-property.html">List your property</a>
                                            </div>
                                            <!-- /.row -->
                                        </div>
                                        <!-- /.navbar-inner -->
                                    </div>
                                    <!-- /.navbar -->
                                </div>
                                <!-- /.container -->
                            </div>
                            <!-- /#header-inner -->
                        </div>
                        <!-- /#header -->
                    </div>
                    <!-- /#header-wrapper -->
                    <!-- NAVIGATION -->
                    <div id="navigation">
                        <div class="container">
                            <div class="navigation-wrapper">
                                <div class="navigation clearfix-normal">
                                    <ul class="nav">
                                        <li >
                                            <a href="{{ route('home') }}" class="active">Trang chủ</a>
                                        </li>
                                        <li class="menuparent">
                                            <span class="menuparent nolink">BĐS bán</span>
                                            <ul>
                                                 @foreach($banList as $ban)
                                                    <li><a href="{{ route('danh-muc', $ban->slug ) }}">{!! $ban->name !!}</a></li>                         
                                                    @endforeach
                                            </ul>
                                        </li>
                                        <li class="menuparent">
                                            <span class="menuparent nolink">BĐS cho thuê</span>
                                            <ul>
                                                @foreach($thueList as $thue)
                                                <li><a href="{{ route('danh-muc', $thue->slug ) }}">{!! $thue->name !!}</a></li>                           
                                                @endforeach
                                            </ul>
                                        </li>                                      
                                        <li><a href="contact-us.html">Contact Us</a></li>
                                    </ul>                                    
                                    <!-- /.language-switcher -->
                                    <form method="get" class="site-search" action="?">
                                        <div class="input-append">
                                            <input title="Enter the terms you wish to search for." class="search-query span2 form-text" placeholder="Search" type="text" name="">
                                            <button type="submit" class="btn"><i class="icon-search"></i></button>
                                        </div>
                                        <!-- /.input-append -->
                                    </form>
                                    <!-- /.site-search -->
                                </div>
                                <!-- /.navigation -->
                            </div>
                            <!-- /.navigation-wrapper -->
                        </div>
                        <!-- /.container -->
                    </div>
                    <!-- /.navigation -->
                    <!-- CONTENT -->
                    <div id="content">
                        @yield('search')
                        <!-- /.map-wrapper -->
                        @yield('noi_bat')
                        @yield('content')
                    </div>
                    <!-- /#content -->
                </div>
                <!-- /#wrapper-inner -->
                <div id="footer-wrapper">
                    <div id="footer-top">
                        <div id="footer-top-inner" class="container">
                            <div class="row">
                                <div class="widget properties span3">
                                    <div class="title">
                                        <h2>Most Recent</h2>
                                    </div>
                                    <!-- /.title -->
                                    <div class="content">
                                        <div class="property">
                                            <div class="image">
                                                <a href="detail.html"></a>
                                                <img src="{{ URL::asset('assets/img/tmp/property-small-1.png') }}" alt="">
                                            </div>
                                            <!-- /.image -->
                                            <div class="wrapper">
                                                <div class="title">
                                                    <h3>
                                                        <a href="detail.html">27523 Pacific Coast</a>
                                                    </h3>
                                                </div>
                                                <!-- /.title -->
                                                <div class="location">Palo Alto CA</div>
                                                <!-- /.location -->
                                                <div class="price">€2 300 000</div>
                                                <!-- /.price -->
                                            </div>
                                            <!-- /.wrapper -->
                                        </div>
                                        <!-- /.property -->
                                        <div class="property">
                                            <div class="image">
                                                <a href="detail.html"></a>
                                                <img src="{{ URL::asset('assets/img/tmp/property-small-2.png') }}" alt="">
                                            </div>
                                            <!-- /.image -->
                                            <div class="wrapper">
                                                <div class="title">
                                                    <h3>
                                                        <a href="detail.html">27523 Pacific Coast</a>
                                                    </h3>
                                                </div>
                                                <!-- /.title -->
                                                <div class="location">Palo Alto CA</div>
                                                <!-- /.location -->
                                                <div class="price">€2 300 000</div>
                                                <!-- /.price -->
                                            </div>
                                            <!-- /.wrapper -->
                                        </div>
                                        <!-- /.property -->
                                        <div class="property">
                                            <div class="image">
                                                <a href="detail.html"></a>
                                                <img src="{{ URL::asset('assets/img/tmp/property-small-3.png') }}" alt="">
                                            </div>
                                            <!-- /.image -->
                                            <div class="wrapper">
                                                <div class="title">
                                                    <h3>
                                                        <a href="detail.html">27523 Pacific Coast</a>
                                                    </h3>
                                                </div>
                                                <!-- /.title -->
                                                <div class="location">Palo Alto CA</div>
                                                <!-- /.location -->
                                                <div class="price">€2 300 000</div>
                                                <!-- /.price -->
                                            </div>
                                            <!-- /.wrapper -->
                                        </div>
                                        <!-- /.property -->
                                    </div>
                                    <!-- /.content -->
                                </div>
                                <!-- /.properties-small -->
                                <div class="widget span3">
                                    <div class="title">
                                        <h2>Contact us</h2>
                                    </div>
                                    <!-- /.title -->
                                    <div class="content">
                                        <table class="contact">
                                            <tbody>
                                                <tr>
                                                    <th class="address">Address:</th>
                                                    <td>1900 Pico Blvd<br>Santa Monica, CA 90405<br>United States<br></td>
                                                </tr>
                                                <tr>
                                                    <th class="phone">Phone:</th>
                                                    <td>+48 123 456 789</td>
                                                </tr>
                                                <tr>
                                                    <th class="email">E-mail:</th>
                                                    <td><a href="mailto:info@yourcompany.com">info@example.com</a></td>
                                                </tr>
                                                <tr>
                                                    <th class="skype">Skype:</th>
                                                    <td>your.company</td>
                                                </tr>
                                                <tr>
                                                    <th class="gps">GPS:</th>
                                                    <td>34.016811<br>-118.469009</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.content -->
                                </div>
                                <!-- /.widget -->
                                <div class="widget span3">
                                    <div class="title">
                                        <h2 class="block-title">Useful links</h2>
                                    </div>
                                    <!-- /.title -->
                                    <div class="content">
                                        <ul class="menu nav">
                                            <li class="first leaf"><a href="404.html">404 page</a></li>
                                            <li class="leaf"><a href="about-us.html">About us</a></li>
                                            <li class="leaf"><a href="contact-us.html">Contact us</a></li>
                                            <li class="leaf"><a href="faq.html">FAQ</a></li>
                                            <li class="leaf"><a href="grid-system.html">Grid system</a></li>
                                            <li class="leaf"><a href="our-agents.html">Our agents</a></li>
                                            <li class="last leaf"><a href="typography.html">Typography</a></li>
                                        </ul>
                                    </div>
                                    <!-- /.content -->
                                </div>
                                <!-- /.widget -->
                                <div class="widget span3">
                                    <div class="title">
                                        <h2 class="block-title">Say hello!</h2>
                                    </div>
                                    <!-- /.title -->
                                    <div class="content">
                                        <form method="post">
                                            <div class="control-group">
                                                <label class="control-label" for="inputName">
                                                Name
                                                <span class="form-required" title="This field is required.">*</span>
                                                </label>
                                                <div class="controls">
                                                    <input type="text" id="inputName">
                                                </div>
                                                <!-- /.controls -->
                                            </div>
                                            <!-- /.control-group -->
                                            <div class="control-group">
                                                <label class="control-label" for="inputEmail">
                                                Email
                                                <span class="form-required" title="This field is required.">*</span>
                                                </label>
                                                <div class="controls">
                                                    <input type="text" id="inputEmail">
                                                </div>
                                                <!-- /.controls -->
                                            </div>
                                            <!-- /.control-group -->
                                            <div class="control-group">
                                                <label class="control-label" for="inputMessage">
                                                Message
                                                <span class="form-required" title="This field is required.">*</span>
                                                </label>
                                                <div class="controls">
                                                    <textarea id="inputMessage"></textarea>
                                                </div>
                                                <!-- /.controls -->
                                            </div>
                                            <!-- /.control-group -->
                                            <div class="form-actions">
                                                <input type="submit" class="btn btn-primary arrow-right" value="Send">
                                            </div>
                                            <!-- /.form-actions -->
                                        </form>
                                    </div>
                                    <!-- /.content -->
                                </div>
                                <!-- /.widget -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /#footer-top-inner -->
                    </div>
                    <!-- /#footer-top -->
                    <div id="footer" class="footer container">
                        <div id="footer-inner">
                            <div class="row">
                                <div class="span6 copyright">
                                    <p>© Copyright 2013 by <a href="http://themes.byaviators.com">Aviators</a>. All rights reserved.</p>
                                </div>
                                <!-- /.copyright -->
                                <div class="span6 share">
                                    <div class="content">
                                        <ul class="menu nav">
                                            <li class="first leaf"><a href="http://www.facebook.com" class="facebook">Facebook</a></li>
                                            <li class="leaf"><a href="http://flickr.net" class="flickr">Flickr</a></li>
                                            <li class="leaf"><a href="http://plus.google.com" class="google">Google+</a></li>
                                            <li class="leaf"><a href="http://www.linkedin.com" class="linkedin">LinkedIn</a></li>
                                            <li class="leaf"><a href="http://www.twitter.com" class="twitter">Twitter</a></li>
                                            <li class="last leaf"><a href="http://www.vimeo.com" class="vimeo">Vimeo</a></li>
                                        </ul>
                                    </div>
                                    <!-- /.content -->
                                </div>
                                <!-- /.span6 -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /#footer-inner -->
                    </div>
                    <!-- /#footer -->
                </div>
                <!-- /#footer-wrapper -->
            </div>
            <!-- /#wrapper -->
        </div>       
        
        <!-- /.palette -->
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAhxs7FQ3DcyDm8Mt7nCGD05BjUskp_k7w&v=3&amp;sensor=true"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.ezmark.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.currency.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/jquery.cookie.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/retina.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/carousel.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/gmap3.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/js/gmap3.infobox.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/libraries/jquery-ui-1.10.2.custom/js/jquery-ui-1.10.2.custom.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/libraries/chosen/chosen.jquery.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/libraries/iosslider/_src/jquery.iosslider.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('assets/libraries/bootstrap-fileupload/bootstrap-fileupload.js') }}"></script>
         @yield('javascript_page')
        <script type="text/javascript" src="{{ URL::asset('assets/js/realia.js') }}"></script>

    </body>
</html>