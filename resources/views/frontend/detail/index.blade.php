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
            <div class="carousel property">
               <div class="preview">
                  <img src="{{ Helper::showImage($hinhArr[0]['image_url']) }}" alt="{!! $detail->title !!}">
               </div>
               <!-- /.preview -->
               <div class="content">
                  <a class="carousel-prev" href="#">Previous</a>
                  <a class="carousel-next" href="#">Next</a>
                  <ul>
                     <?php $i = 0;?>
                     @foreach( $hinhArr as $hinh )
                     <?php $i++; ?>
                     <li @if($i == 1 ) class="active" @endif><img src="{{ Helper::showImage($hinh['image_url']) }}" alt="{!! $detail->title !!} {{ $i }}" /></li>
                     @endforeach                                                 
                  </ul>
               </div>
               <!-- /.content -->
            </div>
            <!-- /.carousel -->
            <div class="property-detail">
               <div class="pull-left overview">
                  <div class="row">
                     <div class="span3">
                        <h2>Đặc điểm BĐS</h2>
                        <table>
                           <tr>
                              <th>Mã tin:</th>
                              <td>{{ $detail->id }}</td>
                           </tr>
                           <tr>
                              <th>Giá:</th>
                              <td>{{ $detail->price }} {!! Helper::getName($detail->price_unit_id, 'price_unit') !!}</td>
                           </tr>
                           <tr>
                              <th>Diện tích:</th>
                              <td>{!! $detail->area !!} m<sup>2</sup></td>
                           </tr>
                           <tr>
                              <th>Loại tin rao:</th>
                              <td>{!! Helper::getName($detail->estate_type_id, 'estate_type') !!}</td>
                           </tr>
                           <tr>
                              <th>Ngày đăng tin:</th>
                              <td>{{ date('d/m/Y', strtotime($detail->created_at)) }}</td>
                           </tr>
                           <tr>
                              <th>Hướng nhà:</th>
                              <td>{!! $detail->direction_id > 0 ? Helper::getName($detail->direction_id, 'direction')  : "KXD" !!}</td>
                           </tr>
                           <tr>
                              <th>Số phòng:</th>
                              <td>{{ $detail->no_room }}</td>
                           </tr>
                           <tr>
                              <th>Số toilet:</th>
                              <td>{{ $detail->no_wc }}</td>
                           </tr>
                        </table>
                     </div>
                     <!-- /.span2 -->
                  </div>
                  <!-- /.row -->
               </div>
               <p>{!! $detail->description !!}</p>
               <div class="clearfix"></div>
               <h2>Tiện ích xung quanh</h2>
               <div class="row">
                  <ul class="span2">
                     <li class="checked">
                        Air conditioning
                     </li>
                     <li class="checked">
                        Balcony
                     </li>
                  </ul>
               </div>
               <h2>Map</h2>
               <div id="property-map"></div>
               <!-- /#property-map -->
               @if(!empty((array)$tagSelected))
               <?php $countTag = count($tagSelected);?>
               <article class="block block-news-with-region" style="margin-top:20px">
                  <u>Tags</u>:
                  <?php $i = 0; ?>
                  @foreach($tagSelected as $tag)
                  <?php $i++; ?>
                  <a href="{{ route('tag', $tag->slug) }}" title="{!! $tag['name'] !!}">{!! $tag['name'] !!}</a>@if($i< $countTag), @endif
                  @endforeach     
               </article>
               @endif
            </div>
         </div>
         <div class="sidebar span3">          
            @include('frontend.partials.sidebar-general')
            @if($otherList)
            <div class="widget properties last">
               <div class="title">
                  <h2>BĐS liên quan</h2>
               </div>
               <!-- /.title -->
               <div class="content">
                  @foreach($otherList as $product)
                  <div class="property">
                     <div class="image">
                        <a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}" title="{!! $product->title !!}"></a>
                        <img src="{{ $product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{!! $product->title !!}">
                     </div>
                     <!-- /.image -->
                     <div class="wrapper">
                        <div class="title">
                           <h3>
                              <a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}" title="{!! $product->title !!}">{!! $product->title !!}</a>
                           </h3>
                        </div>
                        <!-- /.title -->
                        <div class="location">{!! Helper::getName($product->district_id, 'district') !!} - {!! Helper::getName($product->city_id, 'city') !!}</div>
                        <!-- /.location -->
                        <div class="price">{{ $product->price }} {!! Helper::getName($product->price_unit_id, 'price_unit') !!}</div>
                        <!-- /.price -->
                     </div>
                     <!-- /.wrapper -->
                  </div>
                  <!-- /.property -->       
                  @endforeach
               </div>
               <!-- /.content -->
            </div>
            <!-- /.properties -->
            @endif
         </div>
      </div>
   </div>
</div>
@endsection
@section('javascript_page')
<script>
   // This example adds a search box to a map, using the Google Place Autocomplete
   // feature. People can enter geographical searches. The search box will return a
   // pick list containing a mix of places and predicted search terms.
   
   // This example requires the Places library. Include the libraries=places
   // parameter when you first load the API. For example:
   // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
   <?php 
      $latt = $detail->latt ? $detail->latt : '10.7860332';
      $longt = $detail->longt ? $detail->longt : '106.6950147';      
      ?>
   function initAutocomplete() {
    
     var myLatLng = {lat: {{ $latt }}, lng: {{ $longt }} };
   
     var map = new google.maps.Map(document.getElementById('property-map'), {
       zoom: 17,
       center: myLatLng
     });
   
     var marker = new google.maps.Marker({
       position: myLatLng,
       map: map          
     });
     map.panTo(marker.getPosition());
     $("a[href='#profile']").on('shown.bs.tab', function(){
   google.maps.event.trigger(map, 'resize');
   map.panTo(marker.getPosition());
   map.setZoom(17);
   });
       
         
   }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAhxs7FQ3DcyDm8Mt7nCGD05BjUskp_k7w&libraries=places&callback=initAutocomplete"
   async defer></script>
<script type="text/javascript">
   var locations = new Array(
          [{!! $latt !!},{!! $longt !!}]
      );
</script>
@endsection