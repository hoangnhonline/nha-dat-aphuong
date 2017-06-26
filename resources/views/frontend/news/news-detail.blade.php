@extends('frontend.layout')
@section('header')
@endsection
@include('frontend.partials.meta')
@section('content')
<div class="container">
   <div id="main">
      <div class="row">
         <div class="span9">
            <h1 class="page-header">{!! $detail->title !!}</h1>
            <div class="property-detail" style="margin-bottom:10px">
               
               <p style="font-weight:bold; font-style:italic">{!! $detail->description !!}</p>
               
            </div>
            <!-- /.carousel -->
            <div class="property-detail">
               <div id="news-content">
                 {!! $detail->content !!}
               </div>
            </div>
         </div>
         <div class="sidebar span3">          
            @include('frontend.partials.sidebar-general')            
         </div>
      </div>
   </div>
</div>
@endsection