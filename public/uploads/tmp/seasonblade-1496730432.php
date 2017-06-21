
<table class="table table-customize table-op-service-price-detail width-auto" id="season_tbl">
    <thead>
        <tr>
            <th class="miw40px w40px" rowspan="2">Del</th>
            <th class="miw40px w40px" rowspan="2">Edit</th>
            <th class="w10px" rowspan="2">SEQ</th>
            <th class="w10px" rowspan="2">Season From</th>
            <th class="w10px" rowspan="2">Season To</th>

            <th colspan="7">DOW Pattern</th>
            <th rowspan="2" class="w80px">DSC</th>
            <th rowspan="2" class="w80px">DSC(JPN)</th>
            <th rowspan="2" class="miw40px w40px"></th>
        </tr>
        <tr>
            <th class="text-center miw10px w10px">Sun</th>
            <th class="text-center miw10px w10px">Mon</th>
            <th class="text-center miw10px w10px">Tue</th>
            <th class="text-center miw10px w10px">Wed</th>
            <th class="text-center miw10px w10px">Thu</th>
            <th class="text-center miw10px w10px">Fri</th>
            <th class="text-center miw10px w10px">Sat</th>
        </tr>
    </thead>
    <tbody>
        @if (count($seasonList) > 0)
        @foreach($seasonList as $key => $season)
        <tr data-index="{{$key}}" class="{{ $season_seq != $season->season_seq ? "row_season" : "" }}" id="trSeasonSeq{{$season->season_seq}}" data-seq="{{$season->season_seq}}">
            <td class="text-center"><input type="checkbox" name="del_cp_{{$season->season_seq}}" value="" id="del_cp_{{$season->season_seq}}" class="class_del_cp"></td>
            <td class="text-center"><input type="radio" id="nameradio" value="{{$season->season_seq}}"
                                           name="name-radio[]"  class="nameradio"
                                           onclick="ajaxGetPrice('{{$season->opt_cxl_pcy_cd}}', '{{$season->season_seq}}')">
            </td>
            <td>{{ $season->season_seq }}
                <input type="hidden" class="season_seq" id="season_seq[]" name="season_seq[]" value="{{ $season->season_seq }}">
            </td>
            <td>
                <div class="input-group date datepicker w130px div_from_date" style="position: static;">
                    <input type="text" class="form-control date-inputmask season_fm" id="season_fm_{{ $season->season_seq }}" name="season_fm[]" value="{{ format_date($season->season_fm, 'm/d/Y') }}"
                           class="season_fm" data-mask="{{ format_date($season->season_fm, 'm/d/Y') }}" placeholder="MM/DD/YYYY">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </td>
            <td>
                <div class="input-group date datepicker w130px div_to_date" style="position: static;">
                    <input type="text" class="form-control date-inputmask season_to" id="season_to_{{ $season->season_seq }}" name="season_to[]" value="{{ format_date($season->season_to, 'm/d/Y') }}"
                           class="season_to" data-mask="{{ format_date($season->season_to, 'm/d/Y') }}" placeholder="MM/DD/YYYY">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </td>

            <td class="text-center"><input type="checkbox" name="cbDOWPattern{{$season->season_seq}}[]" class="ptn_dow" value="0" id="cbDOWPattern{{$season->season_seq}}" @if ($season->dow_sun == 'Y') checked @endif></td>
            <td class="text-center"><input type="checkbox" name="cbDOWPattern{{$season->season_seq}}[]" class="ptn_dow" value="1" id="cbDOWPattern{{$season->season_seq}}" @if ($season->dow_mon == 'Y') checked @endif></td>
            <td class="text-center"><input type="checkbox" name="cbDOWPattern{{$season->season_seq}}[]" class="ptn_dow" value="2" id="cbDOWPattern{{$season->season_seq}}" @if ($season->dow_tue == 'Y') checked @endif></td>
            <td class="text-center"><input type="checkbox" name="cbDOWPattern{{$season->season_seq}}[]" class="ptn_dow" value="3" id="cbDOWPattern{{$season->season_seq}}" @if ($season->dow_wed == 'Y') checked @endif></td>
            <td class="text-center"><input type="checkbox" name="cbDOWPattern{{$season->season_seq}}[]" class="ptn_dow" value="4" id="cbDOWPattern{{$season->season_seq}}" @if ($season->dow_thu == 'Y') checked @endif></td>
            <td class="text-center"><input type="checkbox" name="cbDOWPattern{{$season->season_seq}}[]" class="ptn_dow" value="5" id="cbDOWPattern{{$season->season_seq}}" @if ($season->dow_fri == 'Y') checked @endif></td>
            <td class="text-center"><input type="checkbox" name="cbDOWPattern{{$season->season_seq}}[]" class="ptn_dow" value="6" id="cbDOWPattern{{$season->season_seq}}" @if ($season->dow_sat == 'Y') checked @endif></td>

            <td><input type="text" name="season_des[]" id="season_des_{{ $season->season_seq }}" value="{{$season->dsc}}" class="form-control  season_des half-size" maxlength="245"></td>
            <td><input type="text" name="season_des_jp[]" id="season_des_jp_{{ $season->season_seq }}" value="{{$season->dsc_jpn}}" class="form-control half-size" maxlength="245"></td>
            <td class="text-center nowrap"></td>
        </tr>
        @endforeach
        @endif
    </tbody>
    <tr class="groupActionRow">
        <td colspan="15">
            <button {{ (isset($checrole) && $checrole)?'disabled':''}} type="button" name="" value="" onclick="return addReason();" class="btn btn-primary w150px"><i class="fa fa-plus"></i> Add</button>
            <button {{ (isset($checrole) && $checrole)?'disabled':''}} type="button" id="btCancelSeasonCP" class="btn btn-primary w150px"><i class="fa fa-times-circle"></i> Cancel</button>
            <button {{ (isset($checrole) && $checrole)?'disabled':''}} type="button" id="btSaveSeasonCP" data-cpy_cd="{{$opt_cxl_pcy_cd}}" class="btn btn-primary w150px" onclick="return validateData();"><i class="fa fa-save"></i> Save</button>
        </td>
    </tr>
    <input type="hidden" name="optCxlPcyCd" value="{{$opt_cxl_pcy_cd}}">
</table>