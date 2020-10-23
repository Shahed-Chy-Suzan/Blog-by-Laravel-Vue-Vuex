<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }  //we can use middleware in every controller but this is not good practice in large project instead of using it in 'web.php'(route)

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
    //   $all_id = explode(',',$ids);     //Console এ চেক করলে 1,2,3 কমা(,) হয়ে আসে । ওটা থেকে দূর করার জন্য explode ইউজ করা হয় যাতে সেগুলা array হয়ে 123 এভাবে নে
    //   foreach ($all_id as $id){
    //       $category = Category::find($id);     //all_id Array ডাটার প্রতিবার একটি করে id ধরে ডিলিট হচ্ছে
    //       $category->delete();
    //   }
    // }

}
