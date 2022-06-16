<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CategoriesController extends Controller
{
    use GeneralTrait;
    public function index(){
        // $category = Category::all();
        $category = Category::select('id' , 'name_'.app()->getLocale())->get();
        return response()->json($category);

    }
    public function getCategoryBiId(Request $request){
        $category = Category::select()->find($request->id);
        if(!$category){
        return  $this->returnError('03' , 'this is file not fonud fuck');
        }
        return $this->returnData('category' , $category);

    }
    public function changeStatus(Request $request){
        Category::where('id' ,$request->id)->update(['active'=>$request->active]);
        return $this ->returnSuccessMessage('is change is success');

    }

    public function login(Request $request){

    // validation
    try{


    $rules = [

        'password'=>'required',
    ];

    $validator = Validator::make($request->all() , $rules);

    // this word mean المتغيرات
    $creedentials = $request->only(['email' , 'password']);

    if($validator->fails()){
        $code = $this->returnCodeAccordingToInput($validator);
        return $this->returnValidationError($code , $validator);
    }



    // login
    $token = Auth::guard('admin-api')->attempt($creedentials);
    if(!$token){
        return $this->returnError('001' , 'not have allowed to login');
    }else{
        return $this->returnData('admin', $token , 'this is message');
    }


    // return token
        }catch(\Exception $ex){
            return $this->returnError($ex->getCode() , $ex->getMessage());
        }
    }


}
