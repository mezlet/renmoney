<?php

namespace App\Http\Controllers;

use Exception;
use App\Models\LocalGovernment;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class AppController extends Controller
{

    /**
     * Get local government
     * @return \Illuminate\Http\JsonResponse
     */
    public function getLGA(){
        try{

            $query = "select local_governments.LGA, states.state_name from
                        local_governments 
                        INNER JOIN states 
                        on local_governments.state_id=states.state_id";

             $result = DB::select($query);
             $arr = [];

             foreach ($result as $value) {
                  if(array_key_exists($value->state_name, $arr)) {
                     array_push($arr[$value->state_name], $value->LGA);
                 } else  {
                     $arr[$value->state_name] = [$value->LGA];
                 }
             }
     
                 return response()->json(["status"=>'success',"data"=>$arr]);
            
        }catch(\Exception $e){
            return response()->json(["success"=>false, "message"=>"Something went wrong."]);
        }
        
    }


}
