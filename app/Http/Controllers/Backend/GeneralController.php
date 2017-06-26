<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Helpers\Helper;
use App\Models\LandingProjects;
use App\Models\ArticlesCate;
use App\Models\Pages;

use DB;
class GeneralController extends Controller
{
    public function updateOrder(Request $request){
        if ($request->ajax())
        {
        	$dataArr = $request->all();
        	$str_order = $dataArr['str_order'];        	
            $table = $dataArr['table'];        
            if( $str_order ){
            	$tmpArr = explode(";", $str_order);
            	$i = 0;
            	foreach ($tmpArr as $id) {
            		if( $id > 0 ){
            			$i++;
            			DB::table($table)
				        ->where('id', $id)				        
				        ->update(array('display_order' => $i));			
            		}
            	}
            }
        }        
    }
    
    public function getSlug(Request $request){
    	$strReturn = '';
    	if( $request->ajax() ){
    		$str = $request->str;
    		if( $str ){
    			$strReturn = str_slug( $str );
    		}
    	}
    	return response()->json( ['str' => $strReturn] );
    }
    public function setupMenu(Request $request){
        $landingList = LandingProjects::where('status', 1)->orderBy('id', 'desc')->get();        
        $articlesCateList = ArticlesCate::where('status', 1)->orderBy('display_order', 'asc')->get();
        $pageList = Pages::where('status', 1)->get();
        return view('backend.menu.index', compact( 'landingList', 'articlesCateList', 'pageList'));
    }
    public function renderMenu(Request $request){        
        $dataArr = $request->all();
        return view('backend.menu.render-menu', compact( 'dataArr' ));   
    }
}
