<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function user(){
        return $this->belongsTo(User::class);   //DB name 'user' tai r 'id' ta foreign_key hisebe likte hoy nai.
    }

    public function category(){
        return $this->belongsTo(Category::class,'cat_id');
    }
}
