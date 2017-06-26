@include('frontend.partials.meta')
@section('content')
<div class="container">
   <div id="main">
      <div class="row">
         <div class="span9" style="margin-bottom:20px">
            <h1 class="page-header">BĐS Bán</h1>
            <div class="properties-grid">
               <div class="row">
                  @foreach($hotProduct as $product)
                  <div class="property span3">
                     <div class="image">
                        <div class="content">
                           <a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}"></a>
                           <img src="{{ $product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{!! $product->title !!}">
                        </div>
                        <!-- /.content -->
                        <div class="price">{!! $product->price !!} {!! Helper::getName($product->price_unit_id, 'price_unit') !!}  </div>
                        <!-- /.price -->
                        @if($product->type == 1)
                        @if($product->cart_status == 1)
                        <span class="reduced label label-primary">Chưa bán</span>
                        @else
                        <span class="reduced label label-danger">Đã bán</span>
                        @endif              
                        @else
                        @if($product->cart_status == 1)
                        <span class="reduced label label-primary">Còn trống</span>
                        @else
                        <span class="reduced label label-danger">Đã thuê</span>
                        @endif
                        @endif
                        <!--<div class="reduced">Reduced </div>-->
                        <!-- /.reduced -->
                     </div>
                     <!-- /.image -->
                     <div class="title">
                        <h2><a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}">{!! $product->title !!}</a></h2>
                     </div>
                     <!-- /.title -->
                     <div class="location">{!! Helper::getName($product->district_id, 'district') !!} - {!! Helper::getName($product->city_id, 'city') !!}</div>
                     <!-- /.location -->
                     <div class="area">
                        <span class="key">DT:</span><!-- /.key -->
                        <span class="value">{!! $product->area !!} m<sup>2</sup></span><!-- /.value -->
                     </div>
                     <!-- /.area -->
                     <div class="bedrooms">
                        <div class="content">{!! $product->no_room !!}</div>
                     </div>
                     <!-- /.bedrooms -->
                     <div class="bathrooms">
                        <div class="content">{!! $product->no_wc !!}</div>
                     </div>
                     <!-- /.bathrooms -->
                  </div>
                  @endforeach   
                  <!-- /.property -->                        
               </div>
               <!-- /.row -->
            </div>
            <h1 class="page-header">BĐS Cho thuê</h1>
            <div class="properties-grid">
               <div class="row">
                  @foreach($hotProduct2 as $product)
                  <div class="property span3">
                     <div class="image">
                        <div class="content">
                           <a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}"></a>
                           <img src="{{ $product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{!! $product->title !!}">
                        </div>
                        <!-- /.content -->
                        <div class="price">{!! $product->price !!} {!! Helper::getName($product->price_unit_id, 'price_unit') !!}  </div>
                        <!-- /.price -->
                        @if($product->type == 1)
                        @if($product->cart_status == 1)
                        <span class="reduced label label-primary">Chưa bán</span>
                        @else
                        <span class="reduced label label-danger">Đã bán</span>
                        @endif              
                        @else
                        @if($product->cart_status == 1)
                        <span class="reduced label label-primary">Còn trống</span>
                        @else
                        <span class="reduced label label-danger">Đã thuê</span>
                        @endif
                        @endif
                        <!--<div class="reduced">Reduced </div>-->
                        <!-- /.reduced -->
                     </div>
                     <!-- /.image -->
                     <div class="title">
                        <h2><a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}">{!! $product->title !!}</a></h2>
                     </div>
                     <!-- /.title -->
                     <div class="location">{!! Helper::getName($product->district_id, 'district') !!} - {!! Helper::getName($product->city_id, 'city') !!}</div>
                     <!-- /.location -->
                     <div class="area">
                        <span class="key">DT:</span><!-- /.key -->
                        <span class="value">{!! $product->area !!} m<sup>2</sup></span><!-- /.value -->
                     </div>
                     <!-- /.area -->
                     <div class="bedrooms">
                        <div class="content">{!! $product->no_room !!}</div>
                     </div>
                     <!-- /.bedrooms -->
                     <div class="bathrooms">
                        <div class="content">{!! $product->no_wc !!}</div>
                     </div>
                     <!-- /.bathrooms -->
                  </div>
                  @endforeach   
                  <!-- /.property -->                        
               </div>
               <!-- /.row -->
            </div>
            <!-- /.properties-grid -->
         </div>
         <div class="sidebar span3">
            @include('frontend.partials.sidebar-general')
            
         </div>
      </div>
   </div>
</div>
<!-- /.container -->
<!-- /.bloc-properties -->
<!-- /.bloc-properties -->
<div class="block-news tabs-custom">
   <div class="container">
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
         <li role="presentation" class="active"><a href="#news1" aria-controls="news1" role="tab" data-toggle="tab">Tư vấn luật</a></li>
         <li role="presentation"><a href="#news2" aria-controls="news2" role="tab" data-toggle="tab">Cẩm nang</a></li>
         <li role="presentation"><a href="#news3" aria-controls="news3" role="tab" data-toggle="tab">Hỏi - đáp</a></li>
      </ul>
      <!-- Tab panes -->
      <div class="tab-content">
         <div role="tabpanel" class="tab-pane active" id="news1">
            <div class="news-grid">
               <div class="row">
                  <?php $i =0; ?>
                  @foreach($luat as $tin)
                  <?php $i++; 
                     ?>
                  <div class="span3">
                     <div class="news-item">
                        <div class="news-img">
                           <a href="{{ route('news-detail', ['slug' => $tin['slug'], 'id' => $tin['id']]) }}" title="{!! $tin['title'] !!}">
                           <img src="{{ $tin['image_url'] ? Helper::showImageThumb($tin['image_url'], 2, '325x200') : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{!! $tin['title'] !!}">
                           </a>
                        </div>
                        <div class="news-info">
                           <p class="data-post">{!! date('d/m/Y H:i', strtotime($tin['created_at'])) !!}</p>
                           <h3><a href="{{ route('news-detail', ['slug' => $tin['slug'], 'id' => $tin['id']]) }}">{!! $tin['title'] !!}</a></h3>
                           <!--<p class="new-item-sum">{!! $tin['description'] !!}</p>-->
                        </div>
                     </div>
                  </div>
                  <!-- /.span3 -->
                  @endforeach         
               </div>
            </div>
         </div>
         <div role="tabpanel" class="tab-pane" id="news2">...</div>
         <div role="tabpanel" class="tab-pane" id="news3">...</div>
      </div>
   </div>
</div>
<input type="hidden" id="location_list" value="{{ $locationStr }}">
<input type="hidden" id="latt_center" value="{{ $firstLocation->latt }}">
<input type="hidden" id="longt_center" value="{{ $firstLocation->longt }}">
@endsection