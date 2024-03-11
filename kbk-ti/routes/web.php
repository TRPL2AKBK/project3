<?php

use App\Http\Controllers\DosenController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KaprodiController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PengurusController;
use App\Http\Controllers\ProdiController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;








/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return ('hello word');
// });
Route::get('/', [LandingController::class, 'index'])->name('login');

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login-proses', [LoginController::class, 'login_proses'])->name('login-proses');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

Route::group(['prefix' => 'admin', 'middleware' => ['auth'], 'as' => 'admin.'], function () {
   //Route::group(['prefix' => 'admin','as' => 'admin.'], function(){

   Route::get('/dashboard', [HomeController::class, 'dashboard'])->name('dashboard');

   Route::get('/user', [HomeController::class, 'index'])->name('index');
   Route::get('/create', [HomeController::class, 'create'])->name('user.create');
   Route::post('/store', [HomeController::class, 'store'])->name('user.store');

   Route::get('/edit/{id}', [HomeController::class, 'edit'])->name('user.edit');
   Route::put('/update/{id}', [HomeController::class, 'update'])->name('user.update');
   Route::delete('/delete/{id}', [HomeController::class, 'delete'])->name('user.delete');
});


Route::group(['prefix' => 'dosen', 'middleware' => ['auth'], 'as' => 'dosen.'], function () {
   // Rute untuk dashboard dosen
   Route::get('dashboard', [DosenController::class, 'index'])->name('dashboard');
});
// Route::resource('dosen', 'DosenController');

Route::group(['prefix' => 'pengurus', 'middleware' => ['auth'], 'as' => 'pengurus.'], function () {
   // Rute untuk dashboard dosen
   Route::get('dashboard', [PengurusController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'kaprodi', 'middleware' => ['auth'], 'as' => 'kaprodi.'], function () {
   // Rute untuk dashboard dosen
   Route::get('dashboard', [KaprodiController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'user', 'middleware' => ['auth'], 'as' => 'user.'], function () {
   // Rute untuk dashboard dosen
   Route::get('dashboard', [UserController::class, 'index'])->name('dashboard');
});
