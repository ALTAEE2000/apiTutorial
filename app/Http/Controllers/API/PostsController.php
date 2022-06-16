<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\Posts;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PostsController extends Controller
{
    use GeneralTrait;
    public function index(){
        $posts = Posts::get();

        return response($posts , 200);

    }
    public function show($id){
        $post = Posts::find($id);
        if($post){
            return $this->returnData(new PostResource($post) , 'dtfyh');
        }else{
            return $this->returnError('002' , 'this is error');
        }


    }

    public function store(Request $request){

        $rules = [
            'title'=>'required',
            'body'=>'required',

        ];
        $messages = [
            'title.required'=>'title is required',
            'body.reqired'=>'body is required',

        ];
        $validator = Validator::make($request->all() , $rules , $messages);
        $posts = Posts::all();
        $data = new Posts();
        $data = $request->all();
        return response($posts , 200);
    }

    public function update($id , Request $request){

        $rules = [
            // 'title'=>'required',
            // 'body'=>'required',

        ];
        $messages = [
            'title.required'=>'title is required',
            'body.reqired'=>'body is required',

        ];

        $validator = Validator::make($request->all() , $rules , $messages);
        if($validator->fails()){
            return $this->returnError(200 , 'this is an error in data');
        }


        $currentPost = Posts::find($id);
        if(!$currentPost){
            return $this->returnError(200 , 'post not found');

        }
        $currentPost = $currentPost->update($request->all());
        if($currentPost){
            return $this->apiResponse(new PostResource($currentPost) ,null , 201);
        }
        return $this->apiResponse(null , 'un known error' , 520);

    }
    public function delete($id){
        $post = Posts::find($id)->delete();
    }
}
