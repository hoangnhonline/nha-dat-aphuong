@extends('frontend.layout')
@include('frontend.partials.meta')
@section('content')
<div class="container">
   <div id="main">
      <div class="row">
         <div class="span9">
            <div class="list-your-property-form">
               <h2 class="page-header" style="font-size:20px">ĐĂNG TIN RAO BÁN, CHO THUÊ NHÀ ĐẤT</h2>
               <div class="content">
                  @if(Session::has('message'))
                  <p class="alert alert-success block-alert-success" >{{ Session::get('message') }}</p>
                  @endif
                  @if (count($errors) > 0)
                  <div class="alert alert-danger block-alert-danger">
                     <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                     </ul>
                  </div>
                  @endif
                  <!-- /.row -->                      
                  <form method="POST" action="{{ route('post-ky-gui') }}" class="form-inline-style">
                     {!! csrf_field() !!}
                     <h4 class="titile-post-news">THÔNG TIN CƠ BẢN</h4>
                     <div class="row">
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Loại tin
                              <span class="form-required" title="This field is required.">*</span>
                              </label>
                              <div class="controls">
                                 <label class="type_radio inline-block">
                                 <input type="radio" name="type" value="1" class="radio_type" id="type_1" {{ old('type', $type) == 1 ? "checked" : "" }}>
                                 BĐS bán
                                 </label>
                                 <label class="type_radio inline-block">
                                 <input type="radio" name="type" value="2" class="radio_type" id="type_2" {{ old('type', $type) == 2 ? "checked" : "" }}>
                                 BĐS cho thuê
                                 </label>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Loại BĐS
                              <span class="form-required" title="This field is required.">*</span>
                              </label>
                              <div class="controls">
                                 <select class="selectpicker form-control" name="estate_type_id" id="estate_type_id">
                                    <option value="">-- Chọn Loại bất động sản --</option>
                                    @foreach( $estateTypeArr as $value )
                                    <option value="{{ $value->id }}"
                                    {{ old('estate_type_id') == $value->id ? "selected" : "" }}                           
                                    >{{ $value->name }}</option>
                                    @endforeach
                                 </select>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                     </div>
                     <!-- /.row -->
                     <div class="row">
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Vị Trí
                              <span class="form-required" title="This field is required.">*</span>
                              </label>
                              <div class="controls">
                                 <select class="selectpicker form-control" id="district_id" name="district_id">
                                    <?php 
                                       if(old('city_id')){
                                         $districtList = App\Models\District::where('city_id', 1)->get();
                                       }
                                       ?>
                                    <option value="">Quận/Huyện</option>
                                    @foreach( $districtList as $value )
                                    <option value="{{ $value->id }}"
                                    {{ old('district_id', $district_id) == $value->id ? "selected" : "" }}                           
                                    >{{ $value->name }}</option>
                                    @endforeach
                                 </select>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              &nbsp;
                              </label>
                              <div class="controls">
                                 <select class="selectpicker form-control" id="ward_id" name="ward_id">
                                    <option class="option-lv0" selected="selected" value="">Phường/Xã</option>
                                    @foreach( $wardList as $value )
                                    <option value="{{ $value->id }}"
                                    {{ old('ward_id') == $value->id ? "selected" : "" }}                           
                                    >{{ $value->name }}</option>
                                    @endforeach
                                 </select>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                     </div>
                     <!-- /.row -->
                     <div class="row">
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              &nbsp;
                              </label>
                              <div class="controls">
                                 <select class="selectpicker form-control" name="street_id" id="street_id">
                                    <option class="option-lv0" selected="selected" value="">Đường/Phố</option>
                                    @foreach( $streetList as $value )
                                    <option value="{{ $value->id }}"
                                    {{ old('street_id') == $value->id ? "selected" : "" }}                           
                                    >{{ $value->name }}</option>
                                    @endforeach
                                 </select>
                                 </select>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              &nbsp;
                              </label>
                              <div class="controls">
                                 <select class="selectpicker form-control" id="project_id" name="project_id">
                                    <option class="option-lv0" selected="selected" value="">Dự án</option>
                                    @foreach( $projectList as $value )
                                    <option value="{{ $value->id }}"
                                    {{ old('project_id') == $value->id ? "selected" : "" }}
                                    >{{ $value->name }}</option>
                                    @endforeach
                                 </select>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                     </div>
                     <!-- /.row -->
                     <div class="row">
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Giá 
                              <span class="form-required" title="This field is required.">*</span>
                              </label>
                              <div class="controls">                                            
                                 <input type="text" name="price" class="form-control" value="{{ old('price')}}">
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Đơn Vị
                              <span class="form-required" title="This field is required.">*</span>
                              </label>
                              <div class="controls">
                                 <select class="form-control selectpicker" name="price_unit_id" id="price_unit_id">
                                    <option value="" >--chọn--</option>
                                    @foreach( $priceUnitList as $value )
                                    <option value="{{ $value->id }}"
                                    {{ old('price_unit_id') == $value->id ? "selected" : "" }}
                                    >{{ $value->name }}</option>
                                    @endforeach
                                 </select>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        
                        <!-- /.span4 -->
                     </div>
                     <div class="row">
                           <div class="control-group span8">
                              <label class="control-label">
                              Diện tích 
                              <span class="form-required" title="This field is required.">*</span>
                              </label>
                              <div class="controls unit">                                            
                                 <input type="text" name="area" class="form-control inline-block" value="{{ old('area') }}">
                                 <span class="inline-block">m2</span>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="row">
                           <div class="control-group span8">
                              <label class="control-label">
                              Địa điểm 
                              <span class="form-required" title="This field is required.">*</span>
                              </label>
                              <div class="controls">                                            
                                 <input type="text" name="full_address" class="form-control" value="{{ old('full_address') }}">                              
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                     <!-- /.row -->
                     <h4 class="titile-post-news">THÔNG TIN KHÁC</h4>
                     <div class="row">
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Mặt tiền
                              </label>
                              <div class="controls unit">
                                 <input type="text" class="form-control inline-block" name="front_face" value="{{ old('front_face') }}">
                                 <span class="inline-block">m</span>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Đường trước nhà
                              </label>
                              <div class="controls unit">
                                 <input type="text" class="form-control inline-block" name="street_wide" value="{{ old('street_wide') }}">
                                 <span class="inline-block">m</span>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                     </div>
                     <!-- /.row -->
                     <div class="row">
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Số tầng
                              </label>
                              <div class="controls">
                                 <input type="text" class="form-control" name="no_floor" value="{{ old('no_floor') }}">
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Số phòng
                              </label>
                              <div class="controls">
                                 <input type="text" class="form-control" name="no_room" value="{{ old('no_room') }}">
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                     </div>
                     <!-- /.row -->
                     <div class="row">
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Hướng BĐS                                            
                              </label>
                              <div class="controls">
                                 <select class="selectpicker form-control" id="direction_id" name="direction_id">
                                    <option value="" selected="selected">--chọn--</option>
                                    @if( $directionArr->count() > 0)
                                    @foreach( $directionArr as $value )
                                    <option value="{{ $value->id }}" {{ old('direction_id') == $value->id  ? "selected" : "" }}>{{ $value->name }}</option>
                                    @endforeach
                                    @endif
                                 </select>
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                        <div class="span4">
                           <div class="control-group">
                              <label class="control-label">
                              Số Toilet                                           
                              </label>
                              <div class="controls">
                                 <input type="text" class="form-control" name="no_wc" value="{{ old('no_wc') }}">
                              </div>
                              <!-- /.controls -->
                           </div>
                        </div>
                        <!-- /.span4 -->
                     </div>
                     <!-- /.row -->
                     <h4 class="titile-post-news">MÔ TẢ CHI TIẾT</h4>
                     <div class="row">
                       <div class="control-group span8">
                          <label class="control-label">
                          Tiêu Đề
                          <span class="form-required" title="This field is required.">*</span>
                          </label>
                          <div class="controls">
                             <input type="text" class="form-control" placeholder="Vui lòng gõ tiếng Việt có dấu để tin đăng được kiểm duyệt nhanh hơn" name="title" id="title" value="{{ old('title') }}">
                          </div>
                          <!-- /.controls -->
                       </div>
                     </div>
                     <!-- /.control-group -->
                     <div class="row">
                       <div class="control-group span8">
                          <label class="control-label">
                          Nội dung mô tả
                          <span class="form-required" title="This field is required.">*</span>
                          </label>
                          <div class="controls">
                             <textarea name="description" id="description">{{ old('description') }}</textarea>
                          </div>
                          <!-- /.controls -->
                       </div>
                     </div>
                     <!-- /.control-group -->
                     <div class="control-group">
                        <label class="control-label">
                        Cập nhật hình ảnh
                        <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                           <p class="text-red">(Bạn có thể tải 16 ảnh và mỗi ảnh dung lượng không quá 4mb!)</p>                         
                        </div>
                        <!-- /.controls -->                     
                        <div class="clearfix show-image">
                            <p>
                                <input type="file" id="file-image" class="inputfile inputfile-5" multiple="">
                            </p>
                             <ul id="div-image">
                               
                             </ul>
                        </div>
                        <div style="clear:both"></div>
                     </div>
                     <!-- /.control-group -->
                     <div class="row">
                       <div class="control-group span8">
                          <label class="control-label">
                          Cập nhật Video:
                          <span class="form-required" title="This field is required.">*</span>
                          </label>
                          <div class="controls">
                             Nếu bạn có nhu cầu Upload video, hãy liên hệ với chúng tôi để được hỗ trợ
                          </div>
                          <!-- /.controls -->
                       </div>
                     </div>
                     <!-- /.control-group -->
                     <h4 class="titile-post-news">THÔNG TIN BẢN ĐỒ</h4>
                     <div class="control-group">
                        <div class="controls">
                           <div class="block-map">
                              <input id="pac-input" class="controls" type="text" placeholder="Nhập địa chỉ để tìm kiếm">
                              <div id="map-abc"></div>
                           </div>
                        </div>
                        <!-- /.controls -->
                        <input type="hidden" name="longt" id="longt" value="" />
                        <input type="hidden" name="latt" id="latt" value="" />
                     </div>
                     <!-- /.control-group -->
                     <h4 class="titile-post-news">THÔNG TIN LIÊN HỆ</h4>
                     <div class="control-group">
                        <label class="control-label">
                        Họ tên
                        <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                           <input type="text" class="form-control" name="contact_name" value="{{ old('contact_name') }}">
                        </div>
                        <!-- /.controls -->
                     </div>
                     <!-- /.control-group -->
                     <div class="control-group">
                        <label class="control-label">
                        Địa chỉ
                        </label>
                        <div class="controls">
                           <input type="text" class="form-control" name="contact_address" value="{{ old('contact_address') }}">
                        </div>
                        <!-- /.controls -->
                     </div>
                     <!-- /.control-group -->
                     <div class="control-group">
                        <label class="control-label">
                        Điện thoại
                        </label>
                        <div class="controls">
                           <input type="text" class="form-control" name="contact_phone" value="{{ old('contact_phone') }}">
                        </div>
                        <!-- /.controls -->
                     </div>
                     <!-- /.control-group -->
                     <div class="control-group">
                        <label class="control-label">
                        Di động
                        <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                           <input type="text" class="form-control" name="contact_mobile" value="{{ old('contact_mobile') }}">
                        </div>
                        <!-- /.controls -->
                     </div>
                     <!-- /.control-group -->
                     <div class="control-group">
                        <label class="control-label">
                        Email                                    
                        </label>
                        <div class="controls">
                           <input type="text" class="form-control" name="contact_email" value="{{ old('contact_email') }}">
                        </div>
                        <!-- /.controls -->
                     </div>
                     <!-- /.control-group -->
                     <div class="form-actions">
                        <input type="submit" class="btn btn-primary arrow-right" value="ĐĂNG TIN">
                        <input type="button" onclick="location.href='{{ route('home') }}'" class="btn btn-default arrow-right" value="HỦY BỎ">
                     </div>
                     <!-- /.form-actions -->
                  </form>
               </div>
               <!-- /.content -->
            </div>
            <!-- /.list-your-property-form -->
         </div>
         <div class="sidebar span3">
            @include('frontend.partials.sidebar-general')
         </div>
      </div>
   </div>
</div>
<input type="hidden" id="route_upload_tmp_image_multiple" value="{{ route('image.tmp-upload-multiple-fe') }}">
<style>
   /* Always set the map height explicitly to define the size of the div
   * element that contains the map. */
   #map-abc {
   height: 400px;
   }
   #infowindow-content .title {
   font-weight: bold;
   }
   #infowindow-content {
   display: none;
   }
   #map-abc #infowindow-content {
   display: inline;
   }
   .pac-card {
   margin: 10px 10px 0 0;
   border-radius: 2px 0 0 2px;
   box-sizing: border-box;
   -moz-box-sizing: border-box;
   outline: none;
   box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
   background-color: #fff;
   font-family: Roboto;
   }
   #pac-container {
   padding-bottom: 12px;
   margin-right: 12px;
   }
   .pac-controls {
   display: inline-block;
   padding: 5px 11px;
   }
   .pac-controls label {
   font-family: Roboto;
   font-size: 13px;
   font-weight: 300;
   }
   #pac-input {
   background-color: #fff;
   font-family: Roboto;
   font-size: 15px;
   font-weight: 300;
   margin-left: 12px;
   padding: 0 11px 0 13px;
   text-overflow: ellipsis;
   width: 400px;
   border: 2px solid #45a44b;
   height: 30px;
   }
   #pac-input:focus {
   border-color: #4d90fe;
   }     
</style>
@stop
@section('javascript_page')
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAhxs7FQ3DcyDm8Mt7nCGD05BjUskp_k7w&libraries=places&callback=initAutocomplete"
         async defer></script>
<script>
      // This example adds a search box to a map, using the Google Place Autocomplete
      // feature. People can enter geographical searches. The search box will return a
      // pick list containing a mix of places and predicted search terms.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map-abc'), {
          center: {lat: 10.7860332, lng: 106.6950147},
          zoom: 17,
          mapTypeId: 'roadmap'
        });

        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
           var marker = new google.maps.Marker({
              position: new google.maps.LatLng(10.7860332, 106.6950147),
              draggable:true,
              map: map            
            });
           google.maps.event.addListener(marker,'dragend',function(event) {
                document.getElementById('latt').value = this.position.lat();
                document.getElementById('longt').value = this.position.lng();                
            });
        });

        var markers = [];       
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // For each place, get the icon, name and location.
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place) {
            
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            document.getElementById('latt').value = place.geometry.location.lat();
            document.getElementById('longt').value = place.geometry.location.lng();
            var icon = {              
              size: new google.maps.Size(128, 128),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: icon,
              title: place.name,
              draggable:true,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }

             // Clear out the old markers.
          markers.forEach(function(marker) {
            google.maps.event.addListener(marker,'dragend',function(event) {
                document.getElementById('latt').value = this.position.lat();
                document.getElementById('longt').value = this.position.lng();                
            });
          });
            
          });
          map.fitBounds(bounds);
        });
      }
    </script>


<script type="text/javascript">
	$(document).on('click', '.remove-image', function(){
  if( confirm ("Bạn có chắc chắn không ?")){
    $(this).parents('.register-avata').remove();
  }
});
$(document).ready(function() {

$('#pac-input').on('keypress', function(e) {
    return e.which !== 13;
});
      var files = "";
      $('#file-image').change(function(e){
         files = e.target.files;
         
         if(files != ''){
           var dataForm = new FormData();        
          $.each(files, function(key, value) {
             dataForm.append('file[]', value);
          });   
          
          dataForm.append('date_dir', 0);
          dataForm.append('folder', 'tmp');

          $.ajax({
            url: $('#route_upload_tmp_image_multiple').val(),
            type: "POST",
            async: false,      
            data: dataForm,
            processData: false,
            contentType: false,
            success: function (response) {
                $('#div-image').append(response);
                if( $('input.thumb:checked').length == 0){
                  $('input.thumb').eq(0).prop('checked', true);
                }
            },
            error: function(response){                             
                var errors = response.responseJSON;
                for (var key in errors) {
                  
                }
                //$('#btnLoading').hide();
                //$('#btnSave').show();
            }
          });
        }
      });

});
</script>
@endsection
