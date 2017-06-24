@extends('frontend.layout')
@include('frontend.partials.meta')
@section('content')
<div class="container">
   <div id="main">
      <div class="row">
         <div class="span9">
            <h1 class="page-header">{!! $cateDetail->name !!}</h1>
            <div class="properties-rows">
               <div class="row">
                  @foreach( $articlesArr as $articles )
                  <div class="property span9">
                     <div class="row">
                        <div class="image span3">
                           <div class="content">
                              <a href="{{ route('news-detail', ['slug' => $articles->slug, 'id' => $articles->id]) }}"></a>
                              <img src="{{ Helper::showImage($articles->image_url) }}" alt="{!! $articles->title !!}">
                           </div>
                           <!-- /.content -->
                        </div>
                        <!-- /.image -->
                        <div class="body span6">
                           <div class="title-price row">
                              <div class="title span6">
                                 <h2><a href="{{ route('news-detail', ['slug' => $articles->slug, 'id' => $articles->id]) }}">{!! $articles->title !!}</a></h2>
                              </div>
                              <!-- /.title -->                        
                           </div>
                           <!-- /.title -->
                           <div class="location" style="font-size:14px">{{ date('d-m-Y', strtotime($articles->created_at)) }}</div>
                           <!-- /.location -->
                           <p>{!! $articles->description !!}</p>
                        </div>
                        <!-- /.body -->
                     </div>
                     <!-- /.property -->
                  </div>
                  <!-- /.row -->
                  @endforeach
               </div>
               <!-- /.row -->
            </div>
            <!-- /.properties-rows -->
            <!--<div class="pagination pagination-centered">
               <ul>
                   <li><a href="#">1</a></li>
                   <li><a href="#">2</a></li>
                   <li class="active"><a href="#">3</a></li>
                   <li><a href="#">4</a></li>
                   <li><a href="#">next</a></li>
                   <li><a href="#">last</a></li>
               </ul>
               </div><!-- /.pagination -->            
         </div>
         <div class="sidebar span3">
            <div class="widget our-agents">
               <div class="title">
                  <h2>Our Agents</h2>
               </div>
               <!-- /.title -->
               <div class="content">
                  <div class="agent">
                     <div class="image">
                        <img src="assets/img/photos/emma-small.png" alt="">
                     </div>
                     <!-- /.image -->
                     <div class="name">Victoria Summer</div>
                     <!-- /.name -->
                     <div class="phone">333-666-777</div>
                     <!-- /.phone -->
                     <div class="email"><a href="mailto:victoria@example.com">victoria@example.com</a></div>
                     <!-- /.email -->
                  </div>
                  <!-- /.agent -->
                  <div class="agent">
                     <div class="image">
                        <img src="assets/img/photos/john-small.png" alt="">
                     </div>
                     <!-- /.image -->
                     <div class="name">John Doe</div>
                     <!-- /.name -->
                     <div class="phone">111-222-333</div>
                     <!-- /.phone -->
                     <div class="email"><a href="mailto:john.doe@example.com">victoria@example.com</a></div>
                     <!-- /.email -->
                  </div>
                  <!-- /.agent -->
               </div>
               <!-- /.content -->
            </div>
            <!-- /.our-agents -->
            <div class="ad widget">
               <h2>Advertisements</h2>
               <div class="content">
                  <a href="#"><img src="assets/img/banner/1.gif" alt="Banner"></a>
                  <a href="#"><img src="assets/img/banner/2.gif" alt="Banner"></a>
                  <a href="#"><img src="assets/img/banner/3.gif" alt="Banner"></a>
                  <a href="#"><img src="assets/img/banner/4.gif" alt="Banner"></a>
               </div>
               <!-- /.content -->
            </div>
            <!-- /.ad -->
         </div>
      </div>
   </div>
</div>
@endsection