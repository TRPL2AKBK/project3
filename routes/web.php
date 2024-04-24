<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Users\DosenController;
use App\Http\Controllers\DosenKBKController;
use App\Http\Controllers\DosenPengampuController;
use App\Http\Controllers\JurusanController;
use App\Http\Controllers\Users\KaprodiController;
use App\Http\Controllers\KBKController;
use App\Http\Controllers\KurikulumController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\MatakuliahController;
use App\Http\Controllers\MatakuliahKBKController;
use App\Http\Controllers\Users\PengurusController;
use App\Http\Controllers\PimpinanJurusanController;
use App\Http\Controllers\PimpinanProdiController;
use App\Http\Controllers\ProdiController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\TahunController;
use App\Http\Controllers\Users\UserController;
use App\Models\DosenPengampu;
use App\Models\Jurusan;
use App\Models\Matakuliah;
use App\Models\MatakuliahKBK;
use Illuminate\Support\Facades\Route;








Route::get('/', [LandingController::class, 'index'])->name('login');

Route::resource('register', RegisterController::class);

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login-proses', [LoginController::class, 'login_proses'])->name('login-proses');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

Route::group(['prefix' => 'admin', 'middleware' => 'admin', 'as' => 'admin.'], function () {

   Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');

   // view halaman admin
   Route::get('/user/data', [AdminController::class, 'dataUser'])->name('users');
   Route::get('/dosen/data', [AdminController::class, 'dataDosen'])->name('dosens');
   Route::get('/matkul/data', [AdminController::class, 'dataMatkul'])->name('matkuls');
   Route::get('/prodi/data', [ProdiController::class, 'dataProdi'])->name('prodis');
   Route::get('/jurusan/data', [JurusanController::class, 'dataJurusan'])->name('jurusan');
   Route::get('/tahun/data', [TahunController::class, 'dataTahun'])->name('tahun');
   Route::get('/kajur/data', [PimpinanJurusanController::class, 'index'])->name('kajur');
   Route::get('/kaprodi/data', [PimpinanProdiController::class, 'index'])->name('kaprodi');
   Route::get('/kurikulum/data', [KurikulumController::class, 'index'])->name('kurikulum');
   Route::get('/matakuliah/data', [MatakuliahController::class, 'index'])->name('matakuliah');
   Route::get('/pengampu/data', [DosenPengampuController::class, 'index'])->name('pengampu');
   Route::get('/kbk/data', [KBKController::class, 'index'])->name('kbk');
   Route::get('/dosenkbk/data', [DosenKBKController::class, 'index'])->name('dosenkbk');
   Route::get('/matakuliahkbk/data', [MatakuliahKBKController::class, 'index'])->name('matakuliahkbk');

   // CRUD Data user 
   Route::get('/user/create', [AdminController::class, 'create'])->name('user.create');
   Route::post('/user/store', [AdminController::class, 'store'])->name('user.store');
   Route::post('/user/insert', [AdminController::class, 'importExcel'])->name('user.import');
   Route::get('/user/importfile', [AdminController::class, 'importFile'])->name('user.importfile');

   Route::get('/user/edit/{id}', [AdminController::class, 'edit'])->name('user.edit');
   Route::put('/user/update/{id}', [AdminController::class, 'update'])->name('user.update');
   Route::delete('/user/delete/{id}', [AdminController::class, 'delete'])->name('user.delete');

   // CRUD Data Prodi
   Route::get('/prodi/create', [ProdiController::class, 'createProdi'])->name('prodi.create');
   Route::post('/store/prodi', [ProdiController::class, 'storeProdi'])->name('prodi.store');

   Route::get('/prodi/edit/{id}', [ProdiController::class, 'editProdi'])->name('prodi.edit');
   Route::put('/prodi/update/{id}', [ProdiController::class, 'updateProdi'])->name('prodi.update');
   Route::delete('/prodi/delete/{id}', [ProdiController::class, 'deleteProdi'])->name('prodi.delete');

   // CRUD Data Jurusan
   Route::get('/jurusan/create', [JurusanController::class, 'createJurusan'])->name('jurusan.create');
   Route::post('/jurusan/store', [JurusanController::class, 'storeJurusan'])->name('jurusan.store');

   Route::get('/jurusan/edit/{id}', [JurusanController::class, 'editJurusan'])->name('jurusan.edit');
   Route::put('/jurusan/update/{id}', [JurusanController::class, 'updateJurusan'])->name('jurusan.update');
   Route::delete('/jurusan/delete/{id}', [JurusanController::class, 'deleteJurusan'])->name('jurusan.delete');

   // CRUD Data Tahun Akademik
   Route::get('/tahun/create', [TahunController::class, 'createTahun'])->name('tahun.create');
   Route::post('/tahun/store', [TahunController::class, 'storeTahun'])->name('tahun.store');

   Route::get('/tahun/edit/{id}', [TahunController::class, 'editTahun'])->name('tahun.edit');
   Route::put('/tahun/update/{id}', [TahunController::class, 'updateTahun'])->name('tahun.update');
   Route::delete('/tahun/delete/{id}', [TahunController::class, 'deleteTahun'])->name('tahun.delete');

   // CRUD Data Pimpinan Jurusan
   Route::get('/kajur/create', [PimpinanJurusanController::class, 'createKajur'])->name('kajur.create');
   Route::post('/kajur/store', [PimpinanJurusanController::class, 'storeKajur'])->name('kajur.store');

   Route::get('/kajur/edit/{id}', [PimpinanJurusanController::class, 'editKajur'])->name('kajur.edit');
   Route::put('/kajur/update/{id}', [PimpinanJurusanController::class, 'updateKajur'])->name('kajur.update');
   Route::delete('/kajur/delete/{id}', [PimpinanJurusanController::class, 'deleteKajur'])->name('kajur.delete');

   // CRUD Data Pimpinan Prodi
   Route::get('/kaprodi/create', [PimpinanProdiController::class, 'createKaprodi'])->name('kaprodi.create');
   Route::post('/kaprodi/store', [PimpinanProdiController::class, 'storeKaprodi'])->name('kaprodi.store');

   Route::get('/kaprodi/edit/{id}', [PimpinanProdiController::class, 'editKaprodi'])->name('kaprodi.edit');
   Route::put('/kaprodi/update/{id}', [PimpinanProdiController::class, 'updateKaprodi'])->name('kaprodi.update');
   Route::delete('/kaprodi/delete/{id}', [PimpinanProdiController::class, 'deleteKaprodi'])->name('kaprodi.delete');

   // CRUD Data KBK
   Route::get('/kbk/create', [KBKController::class, 'create'])->name('kbk.create');
   Route::post('/kbk/store', [KBKController::class, 'store'])->name('kbk.store');

   Route::get('/kbk/edit/{id}', [KBKController::class, 'edit'])->name('kbk.edit');
   Route::put('/kbk/update/{id}', [KBKController::class, 'update'])->name('kbk.update');
   Route::delete('/kbk/delete/{id}', [KBKController::class, 'destroy'])->name('kbk.delete');

   // CRUD Data Matakuliah KBK
   Route::get('/matakuliahkbk/create', [MatakuliahKBKController::class, 'create'])->name('matakuliahkbk.create');
   Route::post('/matakuliahkbk/store', [MatakuliahKBKController::class, 'store'])->name('matakuliahkbk.store');

   Route::get('/matakuliahkbk/edit/{id}', [MatakuliahKBKController::class, 'edit'])->name('matakuliahkbk.edit');
   Route::put('/matakuliahkbk/update/{id}', [MatakuliahKBKController::class, 'update'])->name('matakuliahkbk.update');
   Route::delete('/matakuliahkbk/delete/{id}', [MatakuliahKBKController::class, 'destroy'])->name('matakuliahkbk.delete');

   // CRUD Data Dosen KBK
   Route::get('/dosenkbk/create', [DosenKBKController::class, 'create'])->name('dosenkbk.create');
   Route::post('/dosenkbk/store', [DosenKBKController::class, 'store'])->name('dosenkbk.store');

   Route::get('/dosenkbk/edit/{id}', [DosenKBKController::class, 'edit'])->name('dosenkbk.edit');
   Route::put('/dosenkbk/update/{id}', [DosenKBKController::class, 'update'])->name('dosenkbk.update');
   Route::delete('/dosenkbk/delete/{id}', [DosenKBKController::class, 'destroy'])->name('dosenkbk.delete');
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
