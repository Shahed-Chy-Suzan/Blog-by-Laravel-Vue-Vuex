<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    // 1 User have : Many Post || Many Post under : 1 User
    public function user(){
        return $this->belongsTo(User::class);   //DB name 'user' tai r 'id' ta foreign_key hisebe likte hoy nai.
    }


    // 1 Category have : Many Post || Many Post under : 1 Category
    public function category(){
        return $this->belongsTo(Category::class,'cat_id');
    }    //--if wrote 'category_id' instead of 'cat_id' in Post's DB,don't have to pass this 'cat_id' as foreign_key
}
