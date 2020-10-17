<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

//--------------Add_category---------------------------------------
    public function add_category(Request $request){
        $this->validate($request,[
            'cat_name'=>'required|min:2|max:50'
        ]);
      $category = New Category();
      $category->cat_name = $request->cat_name;
      $category->save();
      return ['message'=>'OK'];
    }

//--------------All_category---------------------------------------
    public function all_category(){
        $categories = Category::all();
        return response()->json([
            'categories'=>$categories
        ],200);
    }

//--------------Delete_category-----------------------------------
    public function delete_category($id){
        $category = Category::find($id);
        $category->delete();
    }

//--------------Edit_category---------------------------------------
    public function edit_category($id){
        $category = Category::find($id);
        return response()->json([
            'category'=>$category
        ],200);
    }

//--------------Update_category---------------------------------------
    public function update_category(Request $request,$id){
        $this->validate($request,[
            'cat_name'=>'required|min:2|max:50'
        ]);
        $category = Category::find($id);
        $category->cat_name = $request->cat_name;
        $category->save();
    }

//--------------all_category---------------------------------------
    // public function selected_category($ids){
    //   $all_id = explode(',',$ids);
    //   foreach ($all_id as $id){
    //       $category = Category::find($id);
    //       $category->delete();
    //   }
    // }

}
