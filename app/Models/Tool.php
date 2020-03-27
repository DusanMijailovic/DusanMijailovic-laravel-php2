<?php
namespace App\Models;



class Tool
{
    private $table = 'tool';

    public function getAllTools(){
        return \DB::table($this->table)
            ->paginate(6);
    }

    public function getAll(){
        return \DB::table($this->table)
            ->get();
    }

    public function getOneTool($id){
        return \DB::table($this->table)
            ->where('toolID', $id)
            ->first();
    }

    public function getToolBySearch($value){

        return \DB::table($this->table)
            ->join('category_tool', 'tool.toolID','=', 'category_tool.toolID')
            ->join('category','category_tool.categoryID', '=','category.categoryID')
            ->where('tool.name', 'like', "%" . $value . "%")
            ->orWhere('tool.description','like', "%" . $value . "%")
            ->select('tool.*')
            ->get();
    }

    public function getOneToolWithCategory($toolID){
        return \DB::table($this->table)
            ->join('category_tool', 'tool.toolID','=', 'category_tool.toolID')
            ->join('category','category_tool.categoryID', '=','category.categoryID')
            ->where('tool.toolID', $toolID)
            ->select("*","tool.name as tool")
            ->get()->first();
    }

    public function getNumberOFTools(){
        return \DB::table($this->table)
            ->count();
    }

    public function addTool($name, $description, $price, $sitePrice, $imgSrc, $imgAlt){
        return \DB::table($this->table)
            ->insert(['name' => $name,
                'description' => $description,
                'price' => $price,
                'sitePrice' => $sitePrice,
                'imgSrc' => $imgSrc,
                'imgAlt' => $imgAlt,
                ]);
    }

    public function deleteTool($toolID) {
        return \DB::table($this->table)
            ->where('toolID', $toolID)
            ->delete();

    }

    public function updateTool($toolID, $name, $description, $price, $sitePrice, $imgSrc, $imgAlt ){
        return \DB::table($this->table)
            ->where('toolID', $toolID)
            ->update([
                'name' => $name,
                'description' => $description,
                'price' => $price,
                'sitePrice' => $sitePrice,
                'imgSrc' => $imgSrc,
                'imgAlt' => $imgAlt

            ]);
}


}
