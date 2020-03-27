<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Log;
use App\Models\Tool;
use Illuminate\Http\Request;

class ToolController extends Controller
{
    private $data;
    private $model;
    public function __construct()
    {
        $this->model = new Tool();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->data['tools'] = $this->model->getAll();
        return view("admin.pages.tool", $this->data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->has('toolBtn')) {
            $name = $request->input('name');
            $description = $request->input('description');
            $price = $request->input('price');
            $priceSite = $request->input('priceSite');
            $imgSrc = $request->input('imgSrc');
            $imgAlt = $request->input('imgAlt');



            try {

                $this->model->addTool($name,$description,$price,$priceSite,$imgSrc,$imgAlt);
                Log::insertLog("Dodat je novi alat {$name }");
                return response(['success' => 'Uspesno!'], 201);
            } catch (\PDOException $e){
                Log::insertLog("Greška : {$e->getMessage()}");
                return response(['error' => $e->getMessage()], 500);
            }

        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if($request->has('toolBtn')) {
            $toolID = $request->input('toolID');
            try {

                $data = $this->model->getOneTool($toolID);
                return \Response::json($data);
            } catch (\PDOException $e){
                Log::insertLog("Greška : {$e->getMessage()}");
                return response(['error' => $e->getMessage()], 500);
            }

        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if($request->has('updateTool')) {
            $toolID = $request->input('toolID');
            $name = $request->input('name');
            $description = $request->input('description');
            $price = $request->input('price');
            $priceSite = $request->input('priceSite');
            $imgSrc = $request->input('imgSrc');
            $imgAlt = $request->input('imgAlt');

            try {

               $this->model->updateTool($toolID,$name,$description,$price,$priceSite,$imgSrc,$imgAlt);
                Log::insertLog("  {$name} je izmenjen");
                return response(['success' => 'Uspesno!'], 204);
            } catch (\PDOException $e){
                Log::insertLog("Greška : {$e->getMessage()}");
                return response(['error' => $e->getMessage()], 500);
            }

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,$id)
    {
        if($request->has('deleteTool')) {
            $toolID = $request->input('toolID');
            try {

                $this->model->deleteTool($toolID);
                Log::insertLog("Alat je obrisan");
                return response(['success' => 'Uspesno!'], 204);
            } catch (\PDOException $e){
                Log::insertLog("Greška : {$e->getMessage()}");
                return response(['error' => $e->getMessage()], 500);
            }

        }
    }

    public function showAjax(){
        try {
            $data = $this->model->getAll();


            return \Response::json($data);
        } catch (\PDOException $e){
            return response(['error' => $e->getMessage()], 500);
        }

    }
}
