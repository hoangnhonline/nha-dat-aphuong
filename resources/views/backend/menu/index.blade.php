@extends('layout.backend')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Menu
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('menu.index') }}">Menu</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default btn-sm" href="{{ route('menu.index') }}" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="{{ route('menu.store') }}">
    <div class="row">
      <!-- left column -->

      <div class="col-md-4">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tạo mới</h3>
          </div>
          <!-- /.box-header -->               
            {!! csrf_field() !!}

            <div class="box-body">
              @if (count($errors) > 0)
                  <div class="alert alert-danger">
                      <ul>
                          @foreach ($errors->all() as $error)
                              <li>{{ $error }}</li>
                          @endforeach
                      </ul>
                  </div>
              @endif
              <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                      <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Danh mục BĐS
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body">
                      <ul>
                        <li> 
                          <input type="checkbox" data-cap="1" data-value="custom" data-link="" id="ban" name="cap1[]" value="1"> BĐS bán
                          <input type="hidden" name="cap1_type[]" value="1">
                          <input type="hidden" name="cap1_title[]" value="BĐS bán">
                          <ul>
                            @foreach($banList as $value)
                            <li>
                                <label>
                                <input type="checkbox" data-parent="ban" value="{{ $value->id }}" data-cap="2" data-value="{{ $value->id }}" name="cap2[1][]" data-type="1"> {{ $value->name }}
                                </label>
                                <input type="hidden" name="cap2_type[1][]" value="2">
                                <input type="hidden" name="cap2_title[1][]" value="{{ $value->name }}">
                            </li>
                            @endforeach
                          </ul>
                        </li>
                        <li> 
                          <input type="checkbox" data-cap="1" data-value="custom" data-link="" id="cho-thue" name="cap1[]" value="2"> BĐS cho thuê
                          <input type="hidden" name="cap1_type[]" value="1">
                          <input type="hidden" name="cap1_title[]" value="BĐS cho thuê">
                          <ul>
                            @foreach($thueList as $value)
                            <li>
                                <label>
                                <input type="checkbox" value="{{ $value->id }}" data-parent="cho-thue" data-cap="2" name="cap2[2][]" data-value="{{ $value->id }}" data-type="1"> {{ $value->name }}
                                </label>
                                <input type="hidden" name="cap2_type[2][]" value="2">
                                <input type="hidden" name="cap2_title[1][]" value="{{ $value->name }}">
                            </li>
                            @endforeach
                          </ul>
                        </li>
                      </ul>
                      <button type="button" class="btnSelectAll btn btn-sm btn-default" style="float:left" data-parent="collapseOne">Chọn tất cả</button>
                      <button type="button" class="btnAddToMenu btn btn-sm btn-info" style="float:right" data-parent="collapseOne">Thêm vào menu</button>
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                      <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Danh mục bài viết
                      </a>
                    </h4>
                  </div>
                  <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                      <ul>
                        @foreach($articlesCateList as $value)
                        <li>
                          <label>
                          <input type="checkbox" data-parent="cho-thue" data-cap="1" data-value="{{ $value->id }}" name="cap1[]" value="{{ $value->id }}" data-type="3"> {{ $value->name }}
                          </label>
                          <input type="hidden" name="cap1_type[]" value="3">
                          <input type="hidden" name="cap1_title[]" value="{{ $value->name }}">
                        </li>
                        @endforeach
                      </ul>
                      <button type="button" class="btnSelectAll btn btn-sm btn-default" style="float:left" data-parent="collapseTwo">Chọn tất cả</button>
                      <button type="button" class="btnAddToMenu btn btn-sm btn-info" style="float:right" data-parent="collapseTwo">Thêm vào menu</button>
                    </div>
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingThree">
                    <h4 class="panel-title">
                      <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Trang
                      </a>
                    </h4>
                  </div>
                  <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                    <div class="panel-body">
                     <ul>
                        @foreach($pageList as $value)
                        <li>
                        <label>
                          <input type="checkbox" data-parent="cho-thue" data-cap="1" name="cap1[]" data-value="{{ $value->id }}" data-type="3" value="{{ $value->id }}"> {{ $value->title }}
                          <input type="hidden" name="cap1_type[]" value="4">
                          <input type="hidden" name="cap1_title[]" value="{{ $value->title }}">
                        </label>
                        </li>
                        @endforeach
                      </ul>
                      <button type="button" class="btnSelectAll btn btn-sm btn-default" style="float:left" data-parent="collapseThree">Chọn tất cả</button>
                      <button type="button" class="btnAddToMenu btn btn-sm btn-info" style="float:right" data-parent="collapseThree">Thêm vào menu</button>
                    </div>
                  </div>
                </div>
                
              </div>         
            </div>                        
            <div class="box-footer">
              <button type="submit" class="btn btn-primary btn-sm">Lưu</button>
              <a class="btn btn-default btn-sm" class="btn btn-primary btn-sm" href="{{ route('menu.index')}}">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-8">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Thông tin SEO</h3>
          </div>
          <!-- /.box-header -->
          <form action="{{ route('menu.store')}}" method="POST">
            {{ csrf_field() }}
            <div class="box-body">
                <div class="panel-group" id="loadMenu">
                </div>
            </div>
          </form>
        <!-- /.box -->     

      </div>
      <!--/.col (left) -->      
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<input type="hidden" id="route_upload_tmp_image" value="{{ route('image.tmp-upload') }}">
<style type="text/css">
  .panel-title {font-weight: bold; text-transform:uppercase;}
  li {list-style: none;}
  li label{  font-weight: normal; }
</style>
@stop
@section('javascript_page')
<script type="text/javascript">
    $(document).ready(function(){      
      $('.btnSelectAll').click(function(){
        $('#' + $(this).data('parent')  + ' input[type=checkbox]').prop('checked', true);
      });
      $('.btnAddToMenu').click(function(){
        var obj = $(this);
        $.ajax({
          url:  "{{ route('render-menu') }}",
          type : 'POST',
          data : $('#' + obj.data('parent') + ' :input').serialize(),
          success : function(data){
            $('#loadMenu').append(data);
          }
        });
      });
    });
</script>
@stop
