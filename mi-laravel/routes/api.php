<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\TaskController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


// Las 2 primeras rutas son públicas, y las 2 siguientes requieren de autenticación.
Route::group([
    'middleware' => 'api',
    'namespace' => 'App\Http\Controllers',
    'prefix' => 'auth'
], function () {
    Route::post(
        'login',
        'AuthController@login'
    );
    Route::post('signup', 'AuthController@signUp');

    Route::group([
        'middleware' => 'auth:api'
    ], function () {
        Route::get('logout', 'AuthController@logout');
        Route::get(
            'user',
            'AuthController@user'
        );
    });
});

Route::get('/task', function () {
    return TaskController::index();
});
Route::get('/task/{id}', function ($id) {
    return TaskController::show($id);
});
Route::post('/task', function (Request $request) {

    return TaskController::store($request);
});
Route::post('/task/edit/{id}', function (Request $request, $id) {
    return TaskController::update($request, $id);
});
Route::post('/task/delete/{id}', function ($id) {
    return TaskController::delete($id);
});
