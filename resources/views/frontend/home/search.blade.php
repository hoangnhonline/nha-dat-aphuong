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
                            <form method="get" action="?">
                                <div class="location control-group">
                                    <label class="control-label" for="inputLocation">
                                    Location
                                    </label>
                                    <div class="controls">
                                        <select id="inputLocation">
                                            <option id="malibu">Malibu, CA</option>
                                            <option id="palo-alto">Palo Alto, CA</option>
                                        </select>
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="type control-group">
                                    <label class="control-label" for="inputType">
                                    Type
                                    </label>
                                    <div class="controls">
                                        <select id="inputType">
                                            <option id="apartment">Apartment</option>
                                            <option id="condo">Condo</option>
                                        </select>
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="beds control-group">
                                    <label class="control-label" for="inputBeds">
                                    Beds
                                    </label>
                                    <div class="controls">
                                        <select id="inputBeds">
                                            <option id="11">1</option>
                                            <option id="21">2</option>
                                        </select>
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="baths control-group">
                                    <label class="control-label" for="inputBaths">
                                    Baths
                                    </label>
                                    <div class="controls">
                                        <select id="inputBaths">
                                            <option id="1">1</option>
                                            <option id="2">2</option>
                                        </select>
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="rent control-group">
                                    <div class="controls">
                                        <label class="checkbox" for="inputRent">
                                        <input type="checkbox" id="inputRent"> Rent
                                        </label>
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="sale control-group">
                                    <div class="controls">
                                        <label class="checkbox" for="inputSale">
                                        <input type="checkbox" id="inputSale"> Sale
                                        </label>
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="price-from control-group">
                                    <label class="control-label" for="inputPriceFrom">
                                    Price from
                                    </label>
                                    <div class="controls">
                                        <input type="text" id="inputPriceFrom" name="inputPriceFrom">
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="price-to control-group">
                                    <label class="control-label" for="inputPriceTo">
                                    Price to
                                    </label>
                                    <div class="controls">
                                        <input type="text" id="inputPriceTo" name="inputPriceTo">
                                    </div>
                                    <!-- /.controls -->
                                </div>
                                <!-- /.control-group -->
                                <div class="price-value">
                                    <span class="from"></span><!-- /.from -->
                                    -
                                    <span class="to"></span><!-- /.to -->
                                </div>
                                <!-- /.price-value -->
                                <div class="price-slider">
                                </div>
                                <!-- /.price-slider -->
                                <div class="form-actions">
                                    <input type="submit" value="Filter now!" class="btn btn-primary btn-large">
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
		$('#tab-search li a').click(function(){
			obj = $(this);
			var type = obj.data('type');
			$('#type').val(type);
			$('#tab-search li').removeClass('active');
			obj.parents('li').addClass('active');

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
					$('#estate_type_id').html(data).selectpicker('refresh');
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
					$('#price_id').html(data).selectpicker('refresh');
				}
			});
		});
	});

</script>
@endsection