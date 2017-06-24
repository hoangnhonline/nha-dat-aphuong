<!DOCTYPE html>
<html lang="en-US">
   <head>
      <title>@yield('title')</title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <meta name="robots" content="noindex,nofollow"/>
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
      <!-- ===== Style CSS ===== -->
      <link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/css/style.css') }}">
      <link rel="stylesheet" href="{{ URL::asset('backend/dist/css/sweetalert2.min.css') }}">
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
                                          <a href="{{ route('home') }}" title="Home" class="brand">Realia</a>
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
                                    <a class="btn btn-primary btn-large list-your-property arrow-right" href="{{ route('ky-gui') }}">Ký gửi</a>
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
            @include('frontend.partials.footer')
            <!-- /#footer-wrapper -->
         </div>
         <!-- /#wrapper -->
      </div>
      <!-- /.palette -->
      @if(\Request::route()->getName() == 'home')
      <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAhxs7FQ3DcyDm8Mt7nCGD05BjUskp_k7w&v=3&amp;sensor=true"></script>
      @endif        
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
      <script src="{{ URL::asset('backend/dist/js/sweetalert2.min.js') }}"></script>
      @yield('javascript_page')
      <script type="text/javascript" src="{{ URL::asset('assets/js/realia.js') }}"></script>
      <script type="text/javascript">
         $(document).ready(function(){
             $.ajaxSetup({
                 headers: {
                   'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                 }
             });
             @if(isset($district_id) && $district_id > 0)
             var district_id = {{ $district_id }};
             $('#district_id').val(district_id);
             $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'ward',
                         col : 'district_id',
                         id : district_id
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#ward_id').html(data).trigger("liszt:updated");
                         @if(isset($ward_id) && $ward_id > 0)
                         $('#ward_id').val({{ $ward_id }}).trigger("liszt:updated");
                         @endif
                     }
                 });
         
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'street',
                         col : 'district_id',
                         id : district_id
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#street_id').html(data).trigger("liszt:updated");
                         @if(isset($street_id) && $street_id > 0)
                         $('#street_id').val({{ $street_id }}).trigger("liszt:updated");
                         @endif
                     }
                 });
         
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'project',
                         col : 'district_id',
                         id : district_id
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#project_id').html(data).trigger("liszt:updated");
                         @if(isset($project_id) && $project_id > 0)
                         $('#project_id').val({{ $project_id }}).trigger("liszt:updated");
                         @endif
                     }
                 });
             @endif            
             $('#district_id').change(function(){
                 var district_id = $(this).val();
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'ward',
                         col : 'district_id',
                         id : district_id
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#ward_id').html(data).trigger("liszt:updated");
                     }
                 });
         
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'street',
                         col : 'district_id',
                         id : district_id
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#street_id').html(data).trigger("liszt:updated");
                     }
                 });
         
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'project',
                         col : 'district_id',
                         id : district_id
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#project_id').html(data).trigger("liszt:updated");
                     }
                 });
             });
         
         
         
             $('.block-box-search li a').click(function(){
                 obj = $(this);
                 var type = obj.data('type');
                 $('#type').val(type);
                 $('.block-box-search li').removeClass('active');
                 obj.parents('li').addClass('active');
         
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'estate_type',
                         col : 'type',
                         id : type
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#estate_type_id').html(data).trigger("liszt:updated");
                         @if(isset($estate_type_id) && $estate_type_id > 0)
                         $('#estate_type_id').val({{ $estate_type_id }}).trigger("liszt:updated");
                         @endif
                     }
                 });
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'price',
                         col : 'type',
                         id : type
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#price_id').html(data).trigger("liszt:updated");
                         @if(isset($price_id) && $price_id > 0)
                         $('#price_id').val({{ $price_id }}).trigger("liszt:updated");
                         @endif
                     }
                 });
             });
             @if(isset($type) && $type >0)
                 var type = {{ $type }};
                 $('#type').val({{ $type }});
                 $('.block-box-search li').removeClass('active');
                 $('.block-box-search li a[data-type={{$type}}]').parents('li').addClass('active');
         
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'estate_type',
                         col : 'type',
                         id : type
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#estate_type_id').html(data).trigger("liszt:updated");
                         @if(isset($estate_type_id) && $estate_type_id > 0)
                         $('#estate_type_id').val({{ $estate_type_id }}).trigger("liszt:updated");
                         @endif
                     }
                 });
                 $.ajax({
                     url : '{{ route('get-child') }}',
                     data : {
                         mod : 'price',
                         col : 'type',
                         id : type
                     },
                     type : 'POST',
                     dataType : 'html',
                     success : function(data){
                         $('#price_id').html(data).trigger("liszt:updated");
                         @if(isset($price_id) && $price_id > 0)
                         $('#price_id').val({{ $price_id }}).trigger("liszt:updated");
                         @endif
                     }
                 });
             @endif
         });
         
      </script>
   </body>
</html>