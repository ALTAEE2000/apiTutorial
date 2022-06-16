<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
    use HasFactory;
    public $fillable = ['id' , 'title' ,  'body'];
    public $timestamps = false;
    public $table = 'posts';
}
