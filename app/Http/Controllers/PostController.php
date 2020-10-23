<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;  //--OR-- use Auth;
use Image;
class PostController extends Controller
{

//-----------------All_post-----------------------------------------------
    public function all_post(){
       $posts = Post::with('user','category')->orderBy('id','desc')->get(); //'user''category' come>>Post Model
       return response()->json([
           'posts'=>$posts
       ],200);
    }

//--------------------Add_post-------------------------------------------
    public function save_post(Request $request){

        $this->validate($request,[
            'title'=>'required|min:2|max:50',
            'description'=>'required|min:2|max:10000',
            'photo'=>'required'
        ]);
        $strpos = strpos($request->photo,';');        //got index_position of ';' from string "data:image/jpeg;base64..."
        $sub = substr($request->photo,0,$strpos);     //got the portion (data:image/jpeg;)
        $ex = explode('/',$sub)[1];                   //got our 'extention' (jpeg)
        $name = time().".".$ex;
        $img = Image::make($request->photo)->resize(870,350);
        $upload_path = public_path()."/uploadimage/";           //public_path() 'index.php' directory te niye jai
        $img->save($upload_path.$name);

        $post = new Post();
        $post->title = $request->title;
        $post->description = $request->description;
        $post->cat_id = $request->cat_id;
        $post->user_id = Auth::user()->id;
        $post->photo = $name;
        $post->save();
    }

//-----------------Delete_post------------------------------------------
    public function delete_post($id){
        $post = Post::find($id);
        $image_path = public_path()."/uploadimage/";
        $image = $image_path.$post->photo;
        if(file_exists($image)){
            @unlink($image);
        }
        $post->delete();
    }

//-----------------Edit_post------------------------------------------
    public function edit_post($id){
        $post = Post::find($id);
        return response()->json([
            'post'=>$post
        ],200);
    }

//-----------------Update_post---------------------------------------
    public function update_post(Request $request, $id){
        $post = Post::find($id);
        $this->validate($request,[
            'title'=>'required|min:2|max:50',
            'description'=>'required|min:2|max:10000'
        ]);

        if($request->photo!=$post->photo){
            $strpos = strpos($request->photo,';');
            $sub = substr($request->photo,0,$strpos);
            $ex = explode('/',$sub)[1];
            $name = time().".".$ex;
            $img = Image::make($request->photo)->resize(200, 200);
            $upload_path = public_path()."/uploadimage/";
            $image = $upload_path. $post->photo;
            $img->save($upload_path.$name);

            if(file_exists($image)){
                @unlink($image);
            }
        }else{
            $name = $post->photo;
        }

        $post->title = $request->title;
        $post->description = $request->description;
        $post->cat_id = $request->cat_id;
        $post->user_id = Auth::user()->id;
        $post->photo = $name;
        $post->save();
    }


}
