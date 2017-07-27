@if(\Request::route()->getName() != 'ky-gui' && \Request::route()->getName() != 'home')
<div class="property-filter widget" style="margin-top:30px">
   <div class="content">
      <form method="get" action="{{ route('search') }}">
         <div class="location control-group">
            <div class="controls">
               <select name="type" id="type">
                  <option selected="selected" value="1">BĐS bán</option>
                  <option value="2">BĐS cho thuê</option>
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <div class="location control-group">
            <div class="controls">
               <select name="estate_type_id" id="estate_type_id">
                  <option selected="selected" value="">Loại bất động sản</option>
                  @foreach($banList as $ban)
                  <option value="{{ $ban->id }}">{!! $ban->name !!}</option>
                  @endforeach
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <div class="location control-group">
            <div class="controls">
               <select id="district_id" name="district_id">
                  <option selected="selected" value="">Quận/Huyện</option>
                  @foreach($districtList as $district)
                  <option value="{{ $district->id }}">{!! $district->name !!}</option>
                  @endforeach
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <!-- /.control-group -->
         <div class="type control-group">
            <div class="controls">
               <select id="ward_id" name="ward_id">
                  <option value="">Phường/Xã</option>
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <!-- /.control-group -->
         <div class="type control-group">
            <div class="controls">
               <select id="street_id" name="street_id" >
                  <option value="">Đường/Phố</option>
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <!-- /.control-group -->
         <div class="type control-group">
            <div class="controls">
               <select id="project_id" name="project_id">
                  <option value="">Dự án</option>
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <div class="type control-group">
            <div class="controls">
               <select name="price_id" id="price_id">
                  <option value="">Mức giá</option>
                  @foreach($priceList as $price)
                  <option  value="{{ $price->id }}">{!! $price->name !!}</option>
                  @endforeach
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <div class="type control-group">
            <div class="controls">
               <select id="area_id" name="area_id">
                  <option value="">Diện tích</option>
                  @foreach($areaList as $area)
                  <option value="{{ $area->id }}">{!! $area->name !!}</option>
                  @endforeach
               </select>
            </div>
            <!-- /.controls -->
         </div>
         <!-- /.price-slider -->
         <div class="form-actions">
            <input type="submit" value="Tìm kiếm" id="btnSearch" class="btn btn-primary btn-large">
         </div>
         <!-- /.form-actions -->
      </form>
   </div>
   <!-- /.content -->
</div>
@endif

<!-- /.property-filter -->
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
<div class="ad widget">
    <h2>Advertisements</h2>
    <div class="content">
        <a href="#"><img src="assets/img/banner/1.gif" alt="Banner"></a>
        <a href="#"><img src="assets/img/banner/2.gif" alt="Banner"></a>
        <a href="#"><img src="assets/img/banner/3.gif" alt="Banner"></a>
        <a href="#"><img src="assets/img/banner/4.gif" alt="Banner"></a>
    </div><!-- /.content -->
</div><!-- /.ad -->