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
                @include('frontend.partials.sidebar-general')
            </div>
        </div>
    </div>
</div>
@endsection