<?php $__env->startSection('header'); ?>
  
  
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.partials.meta', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->startSection('content'); ?>
<section class="col-sm-8 col-xs-12 block-sitemain">
<article class="block-breadcrumb-page">
	<ul class="breadcrumb">	
		<li><a href="<?php echo e(route('home')); ?>" title="Trở về trang chủ">Trang chủ</a></li>
		<li>
			<?php if($detail->type == 1): ?>			
			<a href="<?php echo e(route('ban')); ?>">BĐS Bán</a>
			<?php else: ?>
			<a href="<?php echo e(route('cho-thue')); ?>">BĐS Cho thuê</a>
			<?php endif; ?>
		</li>
		<li>					
			<a href="<?php echo e(route('danh-muc', $rsLoai->slug )); ?>"><?php echo $rsLoai->name; ?></a>
		</li>
		<!--<li class="active"><?php echo e($detail->title); ?></li>-->
	</ul>
</article>
	<article class="block block-cate-news-detail">
		<h1><?php echo $detail->title; ?></h1>
		<div class="cate-news-detail-location">
	        <i class="fa fa-map-marker"></i> Khu vực:
	    	<?php echo Helper::getName($detail->district_id, 'district'); ?> - <?php echo Helper::getName($detail->city_id, 'city'); ?>

	    </div><!-- /cate-news-detail-location -->
	    <ul class="cate-news-detail-price clearfix">
			<li><p>Giá: <span><?php echo e($detail->price); ?> <?php echo Helper::getName($detail->price_unit_id, 'price_unit'); ?></span></p></li>
			<li><p>Diện tích: <span><?php echo $detail->area; ?> m<sup>2</sup></span></p></li>
	    </ul><!-- /cate-news-detail-price -->
	    <hr>
	    <div class="cate-news-detail-desc">
	    	<h3>Thông tin mô tả</h3>
	    	<div class="cate-news-detail-desc-content">
	    		<?php echo $detail->description; ?>
	    	</div>
	    </div><!-- /cate-news-detail-desc -->
	    <div class="cate-news-detail-tab">
		 	<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a class="imgdetail" href="#home" aria-controls="home" role="tab" data-toggle="tab">Hình ảnh</a></li>
				<li role="presentation"><a class="mapdetail" href="#profile" aria-controls="profile" role="tab" data-toggle="tab" onclick="initAutocomplete();">Bản đồ</a></li>
			</ul>
		 	<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					<div id="slide-detail">
						<ul class="slide-detail">
							<?php foreach( $hinhArr as $hinh ): ?>
							<li><img src="<?php echo e(Helper::showImage($hinh['image_url'])); ?>" alt="hinh anh nho" /></li>
                            <?php endforeach; ?>
						</ul>
						<ul id="bx-pager-detail">
							<?php $i = 0; ?>
							<?php foreach( $hinhArr as $hinh ): ?>							
							<li><a data-slide-index="<?php echo e($i); ?>" href=""><img src="<?php echo e(Helper::showImage($hinh['image_url'])); ?>" alt="hinh anh to" /></a></li>
							<?php $i++; ?>
							<?php endforeach; ?>
						</ul>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="profile">
					<div class="block-map">
						<div id="map-abc" style="height:400px;clear:both;width:100%"></div>
					</div>
				</div>
			</div>
	    </div><!-- /cate-news-detail-tab -->
	    <hr>
	    <div class="block-detail-info row">
	    	<div class="col-sm-6">
	    		<h3>Đặc điểm bất động sản</h3>
	    		<table class="table table-customize">	    			
	    			<tr>
	    				<td><b>Mã tin</b></td>
	    				<td><?php echo e($detail->id); ?></td>
	    			</tr>
	    			<tr>
	    				<td><b>Loại tin rao</b></td>
	    				<td><?php echo Helper::getName($detail->estate_type_id, 'estate_type'); ?></td>
	    			</tr>
	    			<tr>
	    				<td><b>Ngày đăng tin</b></td>
	    				<td><?php echo e(date('d/m/Y', strtotime($detail->created_at))); ?></td>
	    			</tr>	    			
	    			<tr>
	    				<td><b>Hướng nhà</b></td>
	    				<td><?php echo $detail->direction_id > 0 ? Helper::getName($detail->direction_id, 'direction')  : "KXD"; ?></td>
	    			</tr>
	    			<tr>
	    				<td><b>Số phòng</b></td>
	    				<td><?php echo e($detail->no_room); ?></td>
	    			</tr>
	    			<tr>
	    				<td><b>Số toilet</b></td>
	    				<td><?php echo e($detail->no_wc); ?></td>
	    			</tr>
	    			<?php if(!empty($tienIch)): ?>
	    			<?php $countTag = count($tienIch); ?>
	    			<tr>
	    				<td><b>Tiện ích xung quanh</b></td>
	    				<td>
	    					<?php $i = 0; ?>
							<?php foreach($tienIch as $tag): ?>							
							<?php $i++; ?>
							<a href="<?php echo e(route('tag', $tag['slug'])); ?>" title="<?php echo $tag['name']; ?>"><?php echo $tag['name']; ?></a><?php if($i< $countTag): ?>, <?php endif; ?>
							<?php endforeach; ?>		
	    				</td>
	    			</tr>
	    			<?php endif; ?>
	    		</table>
	    	</div>
	    	<div class="col-sm-6">
	    		<h3>Thông tin liên hệ</h3>
	    		<table class="table table-customize">
	    			<tr>
	    				<td><b>Tên liên lạc</b></td>
	    				<td><?php echo $detail->contact_name; ?></td>
	    			</tr>
	    			<tr>
	    				<td><b>Địa chỉ</b></td>
	    				<td><?php echo Helper::getName($detail->district_id, 'district'); ?> - <?php echo Helper::getName($detail->city_id, 'city'); ?></td>
	    			</tr>
	    			<tr>
	    				<td><b>Di động</b></td>
	    				<td><?php echo e($detail->contact_mobile); ?></td>
	    			</tr>
	    			<tr>
	    				<td><b>Email</b></td>
	    				<td><?php echo $detail->contact_email; ?></td>
	    			</tr>
	    		</table>
	    	</div>
	    </div><!-- /block-detail-info -->	    
	</article><!-- /block-cate-news-detail -->
	<?php if(!empty((array)$tagSelected)): ?>
	<?php $countTag = count($tagSelected);?>
	<article class="block block-news-with-region">
		<u>Tags</u>:
		<?php $i = 0; ?>
		<?php foreach($tagSelected as $tag): ?>
		<?php $i++; ?>
		<a href="<?php echo e(route('tag', $tag->slug)); ?>" title="<?php echo $tag['name']; ?>"><?php echo $tag['name']; ?></a><?php if($i< $countTag): ?>, <?php endif; ?>
		<?php endforeach; ?>		
	</article>
	<?php endif; ?>
	<?php if($otherList): ?>
	<article class="block block-news-with-region">
		<div class="block-title block-title-common">
			<h3><span class="icon-tile"><i class="fa fa-th-list"></i></span> TIN RAO CÙNG KHU VỰC</h3>
		</div>
		<div class="block-contents">
			<div class="news-with-region-list">
				<div class="row">
					<?php foreach($otherList as $product): ?>
					<div class="col-sm-6 col-xs-12">
						<div class="news-with-region-item clearfix">
							<div class="news-with-region-title">
								<a href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>" title="<?php echo $product->title; ?>"><?php echo $product->title; ?></a>
							</div>
							<div class="news-with-region-content">
								<div class="news-with-region-img">
									<a  href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>"><img  title="<?php echo $product->title; ?>" src="<?php echo e($product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg')); ?>" alt="<?php echo $product->title; ?>" ></a>
								</div>
								<div class="news-with-region-info">
									<p>
			                            <label>Giá:</label>
			                            <span><?php echo e($product->price); ?> <?php echo Helper::getName($product->price_unit_id, 'price_unit'); ?></span>
			                        </p>
			                        <p>
			                            <label>Diện tích:</label>
			                            <?php echo $product->area; ?> m<sup>2</sup>
			                        </p>
			                        <p>
			                            <label>Vị trí:</label>
			                            <?php echo Helper::getName($product->district_id, 'district'); ?> - <?php echo Helper::getName($product->city_id, 'city'); ?>

			                        </p>
								</div>
							</div>
						</div>
					</div><!-- /col-sm-6 col-xs-12 -->					
					<?php endforeach; ?>
				</div>				
			</div>
		</div>
	</article><!-- /block-news-with-region -->
	<?php endif; ?>
</section><!-- /block-site-left -->

<?php $__env->stopSection(); ?>
<?php $__env->startSection('javascript_page'); ?>
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
      	
        var myLatLng = {lat: <?php echo e($latt); ?>, lng: <?php echo e($longt); ?> };

        var map = new google.maps.Map(document.getElementById('map-abc'), {
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
 $(document).ready(function () {
    $('.bxslider .item').each(function () {
        $(this).zoom();
    });

    $(".bxslider").bxSlider({
    	controls: false,
        pagerCustom: '.pro-thumb-img',
        nextText: '<i class="fa fa-angle-right"></i>',
        prevText: '<i class="fa fa-angle-left"></i>',
        adaptiveHeight: true
    });

    $(".pro-thumb-img").bxSlider({
        slideMargin: 20,
        maxSlides: 4,
        pager: false,
        controls: true,
        slideWidth: 80,
        infiniteLoop: false,
        nextText: '<i class="fa fa-angle-right"></i>',
        prevText: '<i class="fa fa-angle-left"></i>'
    });
    /** COUNT DOWN **/
	$('[data-countdown]').each(function() {
		var $this = $(this), finalDate = $(this).data('countdown');
		$this.countdown(finalDate, function(event) {
			var fomat ='<i class="fa fa-clock-o"></i> <b>Thời gian còn lại:</b> <span>%D ngày,</span> <span>%H</span> : %M<span class="minute"></span> : %S<span class="seconds"></span>';
			$this.html(event.strftime(fomat));
		});
	});
	$('.bxslider').bxSlider({
		pagerCustom: '#bx-pager',
		pager: true,
		adaptiveHeight: true
	});
	$('.slide-detail').bxSlider({
		pagerCustom: '#bx-pager-detail',
		pager: true,
		adaptiveHeight: true,
		auto : true,
		pause : 4000
	});

});

</script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript_page'); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>