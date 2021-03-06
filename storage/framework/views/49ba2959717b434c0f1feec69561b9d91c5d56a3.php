<?php echo $__env->make('frontend.partials.meta', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->startSection('content'); ?>
<div class="container">
    <div id="main">
        <div class="row">
            <div class="span9" style="margin-bottom:20px">
                <h1 class="page-header">BĐS Bán</h1>
                <div class="properties-grid">
                    <div class="row">
                        
                         <?php foreach($hotProduct as $product): ?>
                         <div class="property span3">
                            <div class="image">
                                <div class="content">
                                    <a href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>"></a>
                                    <img src="<?php echo e($product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg')); ?>" alt="<?php echo $product->title; ?>">
                                </div>
                                <!-- /.content -->
                                <div class="price"><?php echo $product->price; ?> <?php echo Helper::getName($product->price_unit_id, 'price_unit'); ?>  </div>
                                <!-- /.price -->
                                <?php if($product->type == 1): ?>
                                    <?php if($product->cart_status == 1): ?>
                                      <span class="reduced label label-primary">Chưa bán</span>
                                    <?php else: ?>
                                      <span class="reduced label label-danger">Đã bán</span>
                                    <?php endif; ?>              
                                <?php else: ?>
                                    <?php if($product->cart_status == 1): ?>
                                      <span class="reduced label label-primary">Còn trống</span>
                                    <?php else: ?>
                                      <span class="reduced label label-danger">Đã thuê</span>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <!--<div class="reduced">Reduced </div>-->
                                <!-- /.reduced -->
                            </div>
                            <!-- /.image -->
                            <div class="title">
                                <h2><a href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>"><?php echo $product->title; ?></a></h2>
                            </div>
                            <!-- /.title -->
                            <div class="location"><?php echo Helper::getName($product->district_id, 'district'); ?> - <?php echo Helper::getName($product->city_id, 'city'); ?></div>
                            <!-- /.location -->
                            <div class="area">
                                <span class="key">DT:</span><!-- /.key -->
                                <span class="value"><?php echo $product->area; ?> m<sup>2</sup></span><!-- /.value -->
                            </div>
                            <!-- /.area -->
                            <div class="bedrooms">
                                <div class="content"><?php echo $product->no_room; ?></div>
                            </div>
                            <!-- /.bedrooms -->
                            <div class="bathrooms">
                                <div class="content"><?php echo $product->no_wc; ?></div>
                            </div>
                            <!-- /.bathrooms -->
                        </div>                        
                        <?php endforeach; ?>   
                        <!-- /.property -->                        
                    </div>
                    <!-- /.row -->
                </div>

                <h1 class="page-header">BĐS Cho thuê</h1>
                <div class="properties-grid">
                    <div class="row">
                        
                         <?php foreach($hotProduct2 as $product): ?>
                         <div class="property span3">
                            <div class="image">
                                <div class="content">
                                    <a href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>"></a>
                                    <img src="<?php echo e($product->image_urls ? Helper::showImageThumb($product->image_urls) : URL::asset('backend/dist/img/no-image.jpg')); ?>" alt="<?php echo $product->title; ?>">
                                </div>
                                <!-- /.content -->
                                <div class="price"><?php echo $product->price; ?> <?php echo Helper::getName($product->price_unit_id, 'price_unit'); ?>  </div>
                                <!-- /.price -->
                                <?php if($product->type == 1): ?>
                                    <?php if($product->cart_status == 1): ?>
                                      <span class="reduced label label-primary">Chưa bán</span>
                                    <?php else: ?>
                                      <span class="reduced label label-danger">Đã bán</span>
                                    <?php endif; ?>              
                                <?php else: ?>
                                    <?php if($product->cart_status == 1): ?>
                                      <span class="reduced label label-primary">Còn trống</span>
                                    <?php else: ?>
                                      <span class="reduced label label-danger">Đã thuê</span>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <!--<div class="reduced">Reduced </div>-->
                                <!-- /.reduced -->
                            </div>
                            <!-- /.image -->
                            <div class="title">
                                <h2><a href="<?php echo e(route('chi-tiet', [$product->slug_loai, $product->slug, $product->id])); ?>"><?php echo $product->title; ?></a></h2>
                            </div>
                            <!-- /.title -->
                            <div class="location"><?php echo Helper::getName($product->district_id, 'district'); ?> - <?php echo Helper::getName($product->city_id, 'city'); ?></div>
                            <!-- /.location -->
                            <div class="area">
                                <span class="key">DT:</span><!-- /.key -->
                                <span class="value"><?php echo $product->area; ?> m<sup>2</sup></span><!-- /.value -->
                            </div>
                            <!-- /.area -->
                            <div class="bedrooms">
                                <div class="content"><?php echo $product->no_room; ?></div>
                            </div>
                            <!-- /.bedrooms -->
                            <div class="bathrooms">
                                <div class="content"><?php echo $product->no_wc; ?></div>
                            </div>
                            <!-- /.bathrooms -->
                        </div>                        
                        <?php endforeach; ?>   
                        <!-- /.property -->                        
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.properties-grid -->
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
                                <img src="<?php echo e(URL::asset('assets/img/photos/emma-small.png')); ?>" alt="">
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
                                <img src="<?php echo e(URL::asset('assets/img/photos/john-small.png')); ?>" alt="">
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
                <div class="hidden-tablet">
                    <div class="widget properties last">
                        <div class="title">
                            <h2>Latest Properties</h2>
                        </div>
                        <!-- /.title -->
                        <div class="content">
                            <div class="property">
                                <div class="image">
                                    <a href="detail.html"></a>
                                    <img src="<?php echo e(URL::asset('assets/img/tmp/property-small-4.png')); ?>" alt="">
                                </div>
                                <!-- /.image -->
                                <div class="wrapper">
                                    <div class="title">
                                        <h3>
                                            <a href="detail.html">27523 Pacific Coast</a>
                                        </h3>
                                    </div>
                                    <!-- /.title -->
                                    <div class="location">Palo Alto CA</div>
                                    <!-- /.location -->
                                    <div class="price">€2 300 000</div>
                                    <!-- /.price -->
                                </div>
                                <!-- /.wrapper -->
                            </div>
                            <!-- /.property -->
                            <div class="property">
                                <div class="image">
                                    <a href="detail.html"></a>
                                    <img src="<?php echo e(URL::asset('assets/img/tmp/property-small-5.png')); ?>" alt="">
                                </div>
                                <!-- /.image -->
                                <div class="wrapper">
                                    <div class="title">
                                        <h3>
                                            <a href="detail.html">27523 Pacific Coast</a>
                                        </h3>
                                    </div>
                                    <!-- /.title -->
                                    <div class="location">Palo Alto CA</div>
                                    <!-- /.location -->
                                    <div class="price">€2 300 000</div>
                                    <!-- /.price -->
                                </div>
                                <!-- /.wrapper -->
                            </div>
                            <!-- /.property -->
                            <div class="property">
                                <div class="image">
                                    <a href="detail.html"></a>
                                    <img src="<?php echo e(URL::asset('assets/img/tmp/property-small-6.png')); ?>" alt="">
                                </div>
                                <!-- /.image -->
                                <div class="wrapper">
                                    <div class="title">
                                        <h3>
                                            <a href="detail.html">27523 Pacific Coast</a>
                                        </h3>
                                    </div>
                                    <!-- /.title -->
                                    <div class="location">Palo Alto CA</div>
                                    <!-- /.location -->
                                    <div class="price">€2 300 000</div>
                                    <!-- /.price -->
                                </div>
                                <!-- /.wrapper -->
                            </div>
                            <!-- /.property -->
                            <div class="property">
                                <div class="image">
                                    <a href="detail.html"></a>
                                    <img src="<?php echo e(URL::asset('assets/img/tmp/property-small-2.png')); ?>" alt="">
                                </div>
                                <!-- /.image -->
                                <div class="wrapper">
                                    <div class="title">
                                        <h3>
                                            <a href="detail.html">27523 Pacific Coast</a>
                                        </h3>
                                    </div>
                                    <!-- /.title -->
                                    <div class="location">Palo Alto CA</div>
                                    <!-- /.location -->
                                    <div class="price">€2 300 000</div>
                                    <!-- /.price -->
                                </div>
                                <!-- /.wrapper -->
                            </div>
                            <!-- /.property -->
                        </div>
                        <!-- /.content -->
                    </div>
                    <!-- /.properties -->
                </div>
            </div>
        </div>
    </div>
  </div>
  <!-- /.container -->

  <!-- /.bloc-properties -->
  <div class="block-news">
    <div class="container">
        <h2 class="page-header">Tư vấn luật</h2>
        <div class="news-grid">
            <div class="row">
               <?php $i =0; ?>
                <?php foreach($luat as $tin): ?>
                <?php $i++; 
                ?>
                
                <div class="span3">
                    <div class="news-item">
                        <div class="news-img">
                            <a href="<?php echo e(route('news-detail', ['slug' => $tin['slug'], 'id' => $tin['id']])); ?>" title="<?php echo $tin['title']; ?>">
                                <img src="<?php echo e($tin['image_url'] ? Helper::showImageThumb($tin['image_url'], 2, '325x200') : URL::asset('backend/dist/img/no-image.jpg')); ?>" alt="<?php echo $tin['title']; ?>">
                            </a>
                        </div>
                        <div class="news-info">
                            <p class="data-post"><?php echo date('d/m/Y H:i', strtotime($tin['created_at'])); ?></p>
                            <h3><a href="<?php echo e(route('news-detail', ['slug' => $tin['slug'], 'id' => $tin['id']])); ?>"><?php echo $tin['title']; ?></a></h3>
                            <!--<p class="new-item-sum"><?php echo $tin['description']; ?></p>-->
                        </div>
                    </div>
                </div><!-- /.span3 -->

                <?php endforeach; ?>            
            </div>
        </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>