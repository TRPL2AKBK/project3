<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\DosenController;
use App\Http\Controllers\JurusanController;
use App\Http\Controllers\KaprodiController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PengurusController;
use App\Http\Controllers\ProdiController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\UserController;
use App\Models\Jurusan;
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

Route::resource('register', RegisterController::class);

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login-proses', [LoginController::class, 'login_proses'])->name('login-proses');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

// Route::get('/home', [AdminController::class, 'index'])->name('home');

// Route::group(['prefix' => 'admin', 'middleware' => ['auth'], 'as' => 'admin.'], function () {
Route::group(['prefix' => 'admin', 'middleware' => 'admin', 'as' => 'admin.'], function () {

   Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');

   // view halaman admin
   Route::get('/datauser', [AdminController::class, 'dataUser'])->name('users');
   Route::get('/datadosen', [AdminController::class, 'dataDosen'])->name('dosens');
   Route::get('/datamatkul', [AdminController::class, 'dataMatkul'])->name('matkuls');
   Route::get('/dataprodi', [AdminController::class, 'dataProdi'])->name('prodis');
   Route::get('/datajurusan', [JurusanController::class, 'dataJurusan'])->name('jurusan');

   // Manipulasi Data user 
   Route::get('/create', [AdminController::class, 'create'])->name('user.create');
   Route::post('/store', [AdminController::class, 'store'])->name('user.store');
   Route::post('/insert', [AdminController::class, 'importExcel'])->name('user.import');
   Route::get('/importfile', [AdminController::class, 'importFile'])->name('user.importfile');

   Route::get('/edit/{id}', [AdminController::class, 'edit'])->name('user.edit');
   Route::put('/update/{id}', [AdminController::class, 'update'])->name('user.update');
   Route::delete('/delete/{id}', [AdminController::class, 'delete'])->name('user.delete');

   // Manipulasi Data Prodi
   Route::get('/create/prodi', [AdminController::class, 'createProdi'])->name('prodi.create');
   Route::post('/store/prodi', [AdminController::class, 'storeProdi'])->name('prodi.store');

   Route::get('/edit/prodi/{id}', [AdminController::class, 'editProdi'])->name('prodi.edit');
   Route::put('/update/prodi/{id}', [AdminController::class, 'updateProdi'])->name('prodi.update');
   Route::delete('/delete/prodi/{id}', [AdminController::class, 'deleteProdi'])->name('prodi.delete');

   // Manipulasi Data Jurusan
   Route::get('/create/jurusan', [JurusanController::class, 'createJurusan'])->name('jurusan.create');
   Route::post('/store/jurusan', [JurusanController::class, 'storeJurusan'])->name('jurusan.store');

   Route::get('/edit/jurusan/{id}', [JurusanController::class, 'editJurusan'])->name('jurusan.edit');
   Route::put('/update/jurusan/{id}', [JurusanController::class, 'updateJurusan'])->name('jurusan.update');
   Route::delete('/delete/jurusan/{id}', [JurusanController::class, 'deleteJurusan'])->name('jurusan.delete');
});


Route::group(['prefix' => 'dosen', 'middleware' => 'dosen', 'as' => 'dosen.'], function () {
   // Rute untuk dashboard dosen
   Route::get('/dashboard', [DosenController::class, 'index'])->name('dashboard');
});
// Route::resource('dosen', 'DosenController');

Route::group(['prefix' => 'pengurus', 'middleware' => 'pengurus', 'as' => 'pengurus.'], function () {
   // Rute untuk dashboard dosen
   Route::get('dashboard', [PengurusController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'kaprodi', 'middleware' => 'kaprodi', 'as' => 'kaprodi.'], function () {
   // Rute untuk dashboard dosen
   Route::get('dashboard', [KaprodiController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'user', 'middleware' => 'user', 'as' => 'user.'], function () {
   // Rute untuk dashboard dosen
   Route::get('/dashboard', [UserController::class, 'index'])->name('dashboard');
   Route::get('/', [UserController::class, 'index'])->name('dashboard');
});
