<?php

use App\Http\Controllers\API\PostsController;
use App\Http\Controllers\CategoriesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;




Route::group(['middleware'=>['api' , 'changeLang'  , 'checkPassword'] , 'namespace'=>'api']  ,function(){
 Route::post('get-main-categories' , [CategoriesController::class , 'index']);

 Route::post('get-category-byId' , [CategoriesController::class , 'getCategoryBiId']);

 Route::post('change-category-status' , [CategoriesController::class , 'changeStatus']);

    Route::group(['prefix'=>'admin' , 'namespace'=>'Admin'] , function(){
        Route::post('login' , [CategoriesController::class , 'login']);
    });

});


Route::group(['middleware'=>['checkPassword' , 'checkAdmintoken:admin-api'] , 'namespace'=>'api']  ,function(){
    Route::get('offers' , [CategoriesController::class , 'offeers']);
});



// another lecturers
Route::get('posts' , [PostsController::class , 'index']);
Route::post('posts/{id}' , [PostsController::class , 'show']);
Route::post('postSave' , [PostsController::class , 'store']);
Route::post('postUpdate/{id}' , [PostsController::class , 'update']);
Route::get('postDelete/{id}' , [PostsController::class , 'delete']);




