<?php

use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\PageController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();
Route::get('/', [PageController::class, 'index']);

Route::get('/uploadpage', [PageController::class, 'uploadpage']);

Route::post('/uploadproduct', [PageController::class, 'store']);

Route::get('/show', [PageController::class, 'show']);

Route::get('/download/{file}', [PageController::class, 'download']);

Route::get('/view/{is}', [PageController::class, 'view']);



Route::get('get-categories' , [CategoriesController::class  , 'index']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
