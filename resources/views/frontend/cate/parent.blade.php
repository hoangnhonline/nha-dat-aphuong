@extends('frontend.layout')
@include('frontend.partials.meta')
@section('content')

<div class="container">

    <div id="main">
        <div class="row">
            <div class="span9">
                <h1 class="page-header">{!! $rs->name !!}</h1>

                <div class="properties-grid">
    @if(!empty( (array) $productList ))
    <div class="row">
        @foreach( $productList as $product )
        <div class="property span3">
            <div class="image">
                <div class="content">
                    <a href="{{ route('chi-tiet', [$product->slug_loai, $product->slug, $product->id]) }}" title="{!! $product->title !!}"></a>
                    <img title="{{ $product->title }}" src="{{ $product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg') }}" alt="{!! $product->title !!}">
                </div><!-- /.content -->

                <div class="price">{!! $product->price !!} {!! Helper::getName($product->price_unit_id, 'price_unit') !!}</div><!-- /.price -->                
                @if($product->type == 1)
                    @if($product->cart_status == 1)
                      <div class="reduced label label-primary">Chưa bán</div>
                    @else
                      <div class="reduced label label-danger">Đã bán</div>
                    @endif              
                @else
                    @if($product->cart_status == 1)
                      <div class="reduced label label-primary">Còn trống</div>
                    @else
                      <div class="reduced label label-danger">Đã thuê</div>
                    @endif
                @endif
            </div><!-- /.image -->

            <div class="title">
                <h2><a href="detail.html">{!! $product->title !!}</a></h2>
            </div><!-- /.title -->

            <div class="location">{!! Helper::getName($product->district_id, 'district') !!} - {!! Helper::getName($product->city_id, 'city') !!}</div><!-- /.location -->
            <div class="area">
                <span class="key">Diện tích:</span><!-- /.key -->
                <span class="value">{!! $product->area !!} m<sup>2</sup></span><!-- /.value -->
            </div><!-- /.area -->
            <div class="bedrooms"><div class="content">{!! $product->no_room !!}</div></div><!-- /.bedrooms -->
            <div class="bathrooms"><div class="content">{!! $product->no_wc !!}</div></div><!-- /.bathrooms -->
        </div><!-- /.property -->
        @endforeach       
    </div><!-- /.row -->
    @endif
</div><!-- /.properties-grid -->
<!--
<div class="pagination pagination-centered">
    <ul>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li class="active"><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">next</a></li>
        <li><a href="#">last</a></li>
    </ul>
</div><!-- /.pagination -->            </div>
            <div class="sidebar span3">
                <div class="widget our-agents">
    <div class="title">
        <h2>Our Agents</h2>
    </div><!-- /.title -->

    <div class="content">
        <div class="agent">
            <div class="image">
                <img src="assets/img/photos/emma-small.png" alt="">
            </div><!-- /.image -->
            <div class="name">Victoria Summer</div><!-- /.name -->
            <div class="phone">333-666-777</div><!-- /.phone -->
            <div class="email"><a href="mailto:victoria@example.com">victoria@example.com</a></div><!-- /.email -->
        </div><!-- /.agent -->

        <div class="agent">
            <div class="image">
                <img src="assets/img/photos/john-small.png" alt="">
            </div><!-- /.image -->
            <div class="name">John Doe</div><!-- /.name -->
            <div class="phone">111-222-333</div><!-- /.phone -->
            <div class="email"><a href="mailto:john.doe@example.com">victoria@example.com</a></div><!-- /.email -->
        </div><!-- /.agent -->
    </div><!-- /.content -->
</div><!-- /.our-agents -->
                <div class="ad widget">
    <h2>Advertisements</h2>
    <div class="content">
        <a href="#"><img src="assets/img/banner/1.gif" alt="Banner"></a>
        <a href="#"><img src="assets/img/banner/2.gif" alt="Banner"></a>
        <a href="#"><img src="assets/img/banner/3.gif" alt="Banner"></a>
        <a href="#"><img src="assets/img/banner/4.gif" alt="Banner"></a>
    </div><!-- /.content -->
</div><!-- /.ad -->
            </div>
        </div>
    </div>
</div>
@endsection