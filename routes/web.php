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

Route::resource('vuelos','VuelosController');
Route::resource('hotels','HotelesController');
Route::resource('aerolineas','AerolineasController');
Route::resource('reservacions','ReservacionsController');
Route::get('/export-forms', 'ExcelController@exportForms');


Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
