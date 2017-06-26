@foreach($dataArr['cap1'] as $k => $v)
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <div class="col-sm-2" style="text-align:right">
             <input type="text" name="display_order[]" value="" class="form-control" style="width:80px">
        </div>
        <div class="col-sm-9">
          <p style="padding-top:7px"><a data-toggle="collapse" href="#collapse{{ $k }}"> {{ $dataArr['cap1_title'][$k] }}</a></p>
        </div>
        <div class="col-sm-1">
            <p style="padding-top:7px"><span class="glyphicon glyphicon-remove rm-div" aria-hidden="true"></span></p>
        </div>
        <div class="clearfix"></div>
      </h4>
    </div>
    <div id="collapse{{ $k }}" class="panel-collapse collapse">
         
    </div>
  </div>
</div>
@endforeach