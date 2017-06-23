@section('noi_bat')
<div class="block-properties">
    <div class="container">
        <h2 class="page-header">BĐS nổi bật</h2>
        <div class="properties-grid">
            <ul class="row">
                @foreach($specialProduct as $product)
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
               
            </ul>
        </div>
    </div>
</div>
@endsection