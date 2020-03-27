<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Tool;
use Psy\Util\Json;

class ToolController extends Controller
{


    public function show(Request $request){
            $value = $request->value;

                $toolModel = new Tool();

                $tools = $toolModel->getToolBySearch($value);



    return Json::encode($tools);

    }



  /*  public function pagination(){

        try {

            $toolModel = new Tool();
            $data = $toolModel->getAllTools();
            return \Response::json($data);
        } catch (\PDOException $e){
            return response(['error' => $e->getMessage()], 500);
        }
    }*/




}
