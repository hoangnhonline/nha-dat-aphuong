@extends('frontend.layout')

@section('header') 
  
@endsection
@include('frontend.partials.meta')
@section('content')
<div class="container">

    
<div id="main">

<div class="list-your-property-form">
    <h2 class="page-header">List your property</h2>

    <div class="content">
        <div class="row">
            <div class="span8">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa.
                </p>
            </div><!-- /.span8 -->
        </div><!-- /.row -->

        <form method="post" action="/sample" enctype="multipart/form-data">
            <div class="row">
            	<h3 class="span12"><strong>1.</strong> <span>Thong tin co ban</span></h3>
                <div class="span4">
                    <div class="rent control-group">

		                    <label class="radio" for="inputRent">
		                        <input type="radio" id="inputRent"> BĐS bán
		                    </label>
		                
		            </div><!-- /.control-group -->

		            <div class="sale control-group">
		                <div class="controls">
		                    <label class="radio" for="inputSale">
		                        <input type="radio" id="inputSale"> BĐS cho thuê
		                    </label>
		                </div><!-- /.controls -->
		            </div><!-- /.control-group -->

                    <div class="control-group">
                        <label class="control-label" for="inputPropertyFirstName">
                            First name
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyFirstName">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="control-group">
                        <label class="control-label" for="inputPropertySurname">
                            Surname
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertySurname">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="control-group">
                        <label class="control-label" for="inputPropertyEmail">
                            Email
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyEmail">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="control-group">
                        <label class="control-label" for="inputPropertyPhone">
                            Phone
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyPhone">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->
                </div><!-- /.span4 -->

                <div class="span4">
                    

                    <div class="control-group">
                        <label class="control-label" for="inputPropertyLocation">
                            Location
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyLocation">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="property-type control-group">
                        <label class="control-label" for="inputPropertyPropertyType">
                            Property type
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <select id="inputPropertyPropertyType">
                                <option id="apartment1">Apartment</option>
                            </select>
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="contract-type control-group">
                        <label class="control-label" for="inputPropertyContractType">
                            Contract type
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <select id="inputPropertyContractType">
                                <option id="apartment2">Rent</option>
                                <option id="apartment3">Sale</option>
                            </select>
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="bedrooms control-group">
                        <label class="control-label" for="inputPropertyBedrooms">
                            Bedrooms
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyBedrooms">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="bathrooms control-group">
                        <label class="control-label" for="inputPropertyBathrooms">
                            Bathrooms
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyBathrooms">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="area control-group">
                        <label class="control-label" for="inputPropertyArea">
                            Area
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyArea">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->

                    <div class="price control-group">
                        <label class="control-label" for="inputPropertyPrice">
                            Price
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <input type="text" id="inputPropertyPrice">
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->
                </div><!-- /.span4 -->
                <div style="clear:both;height:500px">
                <div class="block-map">
                                        <input id="pac-input" class="controls" type="text" placeholder="Nhập địa chỉ để tìm kiếm">
                                        <div id="map-abc"></div>
                                    </div>
                                    <input type="hidden" name="longt" id="longt" value="" />
                                    <input type="hidden" name="latt" id="latt" value="" />
                                    </div>
                <div class="span4">
                
                    <div class="fileupload fileupload-new control-group" data-provides="fileupload">
                        <label class="control-label" for="inputPropertyPrice">
                            Image files
                        </label>

                        <div class="input-append">
                            <div class="uneditable-input">
                                <i class="icon-file fileupload-exists"></i>
                                <span class="fileupload-preview"></span>
                            </div>
                                                <span class="btn btn-file">
                                                    <span class="fileupload-new">Select file</span>
                                                    <span class="fileupload-exists">Change</span>
                                                    <input type="file" />
                                                </span>
                            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
                        </div><!-- /.input-append -->
                    </div><!-- .fileupload -->

                    <div class="control-group">
                        <label class="control-label" for="inputPropertyNotes">
                            Your notes
                            <span class="form-required" title="This field is required.">*</span>
                        </label>
                        <div class="controls">
                            <textarea id="inputPropertyNotes"></textarea>
                        </div><!-- /.controls -->
                    </div><!-- /.control-group -->
                </div><!-- /.span4 -->
            </div><!-- /.row -->
        </form>
    </div><!-- /.content -->
</div><!-- /.list-your-property-form --> 
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
@endsection
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
