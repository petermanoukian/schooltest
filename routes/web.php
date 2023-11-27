<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/config-cache', function() {
    $exitCode = \Artisan::call('config:cache');
    $exitCode = \Artisan::call('cache:clear');
    $exitCode = \Artisan::call('route:clear');
    $exitCode = \Artisan::call('view:clear');
	$exitCode = \Artisan::call('config:clear');
    return '<h1>Clear Config cleared</h1>';
});

Route::get('/home', [ 'uses' =>'PagController@index']);

Route::get('/result/{id?}/{email?}', [ 'uses' =>'PagController@index']);
Route::get('/resultfinal/{id?}/{email?}', [ 'uses' =>'PagController@index']);

