@extends('frontend.layout')
@include('frontend.partials.meta')
@section('content')
<div class="container">
    <div>
        <div id="main">
            <div class="about-us">
    <h2 class="page-header">About us</h2>

    <div class="row">
        <div class="content">
            <div class="member span4">
                <img src="assets/img/photos/john-doe-original.png" alt="John Doe">
                <h2>John Doe</h2>
                <p>Senior Vice President</p>
            </div><!-- /.member -->

            <div class="member span4">
                <img src="assets/img/photos/emma-hearth-original.png" alt="Emma Hearth">
                <h2>Emma Hearth</h2>
                <p>Co-Founder</p>
            </div><!-- /.member -->

            <div class="member span4">
                <img src="assets/img/photos/angie-blair-original.png" alt="Angie Blair">
                <h2>Angie Blair</h2>
                <p>Public Relations</p>
            </div><!-- /.member -->
        </div><!-- /.content -->
    </div><!-- /.row -->
</div><!-- /.about-us -->
            <hr>

            <div class="row">
                <div class="span6">
                    <h2>Our Mission</h2>
                    <p>Morbi rhoncus, nisi eget molestie gravida, nunc turpis porttitor tortor, id sagittis eros magna sed arcu. In hac habitasse platea dictumst. Integer placerat gravida orci, in gravida massa dapibus nec. Nam commodo rhoncus urna, et imperdiet odio lacinia sodales. Morbi accumsan aliquet metus, ac malesuada quam rutrum et. Curabitur porttitor tincidunt lorem, id mollis dui fringilla sit amet. Mauris vitae risus nunc. Nunc pulvinar varius magna, sed scelerisque arcu varius vitae.</p>
                    <p>Donec lobortis tincidunt justo et rhoncus. Etiam ac ligula a diam consectetur commodo vitae non ipsum. Etiam viverra leo at nunc sollicitudin hendrerit. Sed feugiat massa ac nisl dictum tempus sed quis nulla. Vivamus aliquam venenatis porta.<br>
                        Quisque eget velit dictum orci luctus lacinia. Donec eget augue non sem</p>
                    <p><a href="/contact-us" class="btn btn-primary">Contact us</a>
                    </p></div>
                <div class="span6">
                    <h2>Company presentation</h2>
                    <iframe src="http://player.vimeo.com/video/61702922" width="500" height="281"></iframe><p><a href="http://vimeo.com/61702922">EVERYBODY WANTS TO KILL BRUCE</a> from <a href="http://vimeo.com/user7408417">Pierre-Alexandre Chauvat</a> on <a href="http://vimeo.com">Vimeo</a>.</p>
                </div>
            </div>
            <div class="partners">
    <h2 class="page-header">Partners</h2>
    <div class="content">
        <div class="partner">
            <a href="http://logopond.com/gallery/detail/192115">
                <img src="assets/img/photos/logo-sokolov.png" alt="Logo">
            </a>
        </div><!-- /.partner -->

        <div class="partner">
            <a href="http://logopond.com/gallery/detail/191954">
                <img src="assets/img/photos/logo-love-letters.png" alt="Logo">
            </a>
        </div><!-- /.partner -->

        <div class="partner">
            <a href="http://logopond.com/gallery/detail/192592">
                <img src="assets/img/photos/logo-royal-markt.png" alt="Logo">
            </a>
        </div><!-- /.partner -->

        <div class="partner">
            <a href="http://logopond.com/gallery/detail/192905">
                <img src="assets/img/photos/logo-shuba.png" alt="Logo">
            </a>
        </div><!-- /.partner -->

        <div class="partner">
            <a href="http://logopond.com/gallery/detail/192394">
                <img src="assets/img/photos/logo-sunsynk.png" alt="Logo">
            </a>
        </div><!-- /.partner -->
    </div><!-- /.content -->
</div><!-- /.partners-->        </div>
    </div>
</div>
<section class="col-sm-8 col-xs-12 block-sitemain">
   <article class="block-breadcrumb-page">
      <ul class="breadcrumb">
         <li><a href="{{ route('home') }}" title="Trở về trang chủ">Trang chủ</a></li>
         <li>
            <a href="{{ route('news-list', $cateDetail->slug) }}">{{ $cateDetail->name }}</a>
         </li>
         <li class="active">{{ $detail->title }}</li>
      </ul>
   </article>
   <article class="block block-breadcrumb">
      <div class="block-contents">
         <ul>
            <li class="active">
               <h2><a href="{{ route('news-list', $cateDetail->slug) }}">{{ $cateDetail->name }}</a></h2>
            </li>
         </ul>
      </div>
   </article>
   <!-- /block-breadcrumb -->
   <article class="block block-cate-news-detail block-news-new-detail">
      <h1>{{ $detail->title }}</h1>
      <div class="nd-time">{{ date('d-m-Y H:i', strtotime($detail->created_at)) }}</div>
      <!--<div class="block-news-new-related">
         <p>Cùng chủ đề : <b><a href="#" title="">Thị trường BDS 2017</a></b></p>
         <ul>
             <li><a href="#" title="">Cần có “hàng rào” pháp lý để sàng lọc dự án condotel</a></li>
             <li><a href="#" title="">Nguy cơ “mất cả chì lẫn chài” vì ăn theo hạ tầng</a></li>
             <li><a href="#" title="">Bất động sản giá rẻ trở thành "vùng trũng" hút dòng tiền đầu tư mạnh mẽ</a></li>
         </ul>
         </div><!-- /block-news-new-related -->
      <h2>{{ $detail->description }}</h2>
      <div class="block-news-new-content">
         <?php echo $detail->content; ?>
      </div>
      <!-- /block-news-new-content -->
   </article>
   <!-- /block-news-new-detail -->
   @if($tagSelected)
   <?php $countTag = count($tagSelected);?>
   <article class="block block-news-with-region">
      <u>Tags</u>:
      <?php $i = 0; ?>
      @foreach($tagSelected as $tag)
      <?php $i++; ?>
      <a href="{{ route('tag', $tag->slug) }}">{{ $tag->name }}</a>@if($i< $countTag), @endif
      @endforeach     
   </article>
   @endif
   <article class="block block-all-news-new">
      <div class="block-title block-title-common">
         <h3><span class="icon-tile"><i class="fa fa-th-list"></i></span> Các tin mới nhất</h3>
      </div>
      <div class="block-contents">
         <div class="all-news-new-list">
            <div class="row">
               @if( $otherArr )
               @foreach( $otherArr as $articles)
               <div class="col-sm-6 col-xs-12">
                  <div class="all-news-new-item clearfix">
                     <div class="all-news-new-img">
                        <a href="{{ route('news-detail', ['slug' => $articles->slug, 'id' => $articles->id]) }}" title="">
                        <img  src="{{ Helper::showImage($articles->image_url) }}" alt="" style="height:80px !important; width:120px !important; "> 
                        </a>
                     </div>
                     <div class="all-news-new-info" style="height:77px !important">
                        <a href="{{ route('news-detail', ['slug' => $articles->slug, 'id' => $articles->id]) }}" title="">
                        {{ $articles->title }}
                        </a>
                     </div>
                  </div>
               </div>
               <!-- /col-sm-6 col-xs-12 --> 
               @endforeach
               @endif
            </div>
         </div>
      </div>
   </article>
   <!-- /block-news-with-region -->
</section>
<!-- /block-site-left -->
@endsection
@section('javascript_page')
@endsection