<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function posts(){
      return $this->hasMany(Post::class,'id');   //--OR--hasMany('App\Post')
      //return $this->hasMany(Post::class);      //--if wrote 'category_id' instead of 'cat_id'
    }                                           //--'id' ta use na korle kaj hocche dklam.
}
