@section('search')
<div class="map-wrapper">
    <div class="map">
        <div id="map" class="map-inner"></div>
        <!-- /.map-inner -->
        <div class="container">
            <div class="row">
                <div class="span3">
                    <div class="property-filter pull-right">
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
                    <!-- /.property-filter -->
                </div>
                <!-- /.span3 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.map -->
</div>
@endsection
@section('javascript_page')
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnSearch').click(function(){		
			if($('#estate_type_id').val() == ''){
				swal({ title: '', text: 'Vui lòng chọn loại bất động sản.', type: 'error' });
				return false;
			}		
		});
		$('#type').change(function(){
			obj = $(this);
			var type = obj.val();
			$.ajax({
				url : '{{ route('get-child') }}',
				data : {
					mod : 'estate_type',
					col : 'type',
					id : type
				},
				type : 'POST',
				dataType : 'html',
				success : function(data){
					$('#estate_type_id').html(data).trigger("liszt:updated");
                    $('#estate_type_id').trigger("liszt:updated");
				}
			});
			$.ajax({
				url : '{{ route('get-child') }}',
				data : {
					mod : 'price',
					col : 'type',
					id : type
				},
				type : 'POST',
				dataType : 'html',
				success : function(data){
					$('#price_id').html(data).trigger("liszt:updated");
				}
			});
		});
	});

</script>
@endsection