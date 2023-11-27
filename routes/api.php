<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/generatedjson/post', ['middleware' => 'cors' ,'uses' => 'SearchHistoryController@store']);
Route::post('/generatedjson/loopstore', ['middleware' => 'cors' ,'uses' => 'SearchHistoryController@loopGeneratedJson']);


Route::get('/questions/{id?}/{email?}', ['middleware' => 'cors' ,'uses' => 'QuesionController@AnasweredQuestions']);
Route::get('/questionsfinal/{id?}/{email?}', ['middleware' => 'cors' ,'uses' => 'QuesionController@Finalasweredquestions']);
Route::get('/questionsall/{id?}/{email?}', ['middleware' => 'cors' ,'uses' => 'QuesionController@AllQuestions']);
Route::get('/answer/answerquestion/{id}', ['middleware' => 'cors' ,'uses' => 'AnswerrController@answerQuesion']);


