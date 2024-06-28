<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ChangeLogController;
use App\Http\Controllers\DosenKBKController;
use App\Http\Controllers\DosenPengampuController;
use App\Http\Controllers\JurusanController;
use App\Http\Controllers\KBKController;
use App\Http\Controllers\KurikulumController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\MatakuliahController;
use App\Http\Controllers\MatakuliahKBKController;
use App\Http\Controllers\PimpinanJurusanController;
use App\Http\Controllers\PimpinanProdiController;
use App\Http\Controllers\ProdiController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProposalTaController;
use App\Http\Controllers\RoleManagementController;
use App\Http\Controllers\RolePermissionController;
use App\Http\Controllers\RPSController;
use App\Http\Controllers\SoalController;
use App\Http\Controllers\SuperAdminController;
use App\Http\Controllers\TahunController;
use App\Http\Controllers\Users\DosenController;
use App\Http\Controllers\Users\KajurController;
use App\Http\Controllers\Users\KaprodiController;
use App\Http\Controllers\Users\PengurusController;
use App\Http\Controllers\Users\UserController;
use App\Http\Controllers\VerifikasiRPSController;
use App\Http\Controllers\VerifikasiSoalController;
use App\Models\DosenPengampu;
use App\Models\Jurusan;
use App\Models\Kurikulum;
use App\Models\Matakuliah;
use App\Models\MatakuliahKBK;
use App\Models\PimpinanProdi;
use App\Models\ProposalTa;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Route;









Route::get('/ambil-data-json', function () {
   try {
      $response = Http::get('https://umkm-pnp.com/heni/index.php?folder=mahasiswa&file=proposal');
      $data = $response->json(); // Mendapatkan data JSON dari respons

      return $data; // Mengembalikan data JSON sebagai respons
   } catch (Exception $e) {
      return response()->json(['error' => 'Terjadi kesalahan: ' . $e->getMessage()], 500);
   }
});



Route::get('/', [LandingController::class, 'index']);


Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login-proses', [LoginController::class, 'login_proses'])->name('login-proses');

Route::get('/forgot-password', [LoginController::class, 'forgot_password'])->name('forgot-password');
Route::post('/forgot-password-proses', [LoginController::class, 'forgot_password_proses'])->name('forgot-password-proses');

Route::get('/validasi-forgot-password/{token}', [LoginController::class, 'validasi_forgot_password'])->name('validasi-forgot-password');
Route::post('/validasi-forgot-password-proses', [LoginController::class, 'validasi_forgot_password_proses'])->name('validasi-forgot-password-proses');

Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

Route::group(['middleware' => ['auth', 'role:super_admin']], function () {
   Route::get('/dashboard', [SuperAdminController::class, 'index'])->name('dashboard');

   Route::get('/change-log', [ChangeLogController::class, 'index'])->name('change-log.index');
   // CRUD Data user 
   Route::get('/user/data', [SuperAdminController::class, 'dataUser'])->name('users');
   Route::get('/user/create', [SuperAdminController::class, 'create'])->name('user.create');
   Route::post('/user/store', [SuperAdminController::class, 'store'])->name('user.store');
   Route::post('/user/insert', [SuperAdminController::class, 'importExcel'])->name('user.import');
   Route::get('/user/importfile', [SuperAdminController::class, 'importFile'])->name('user.importfile');
   Route::get('/user/edit/{id}', [SuperAdminController::class, 'edit'])->name('user.edit');
   Route::put('/user/update/{id}', [SuperAdminController::class, 'update'])->name('user.update');
   Route::delete('/user/delete/{id}', [SuperAdminController::class, 'delete'])->name('user.delete');

   // Role Permission
   Route::get('/role-management', [RoleManagementController::class, 'index'])->name('role_management.index');
   Route::put('/role-management/{role}', [RoleManagementController::class, 'update'])->name('role_management.update');
   Route::get('/roles/create', [RoleManagementController::class, 'create'])->name('role_management.create');
   Route::post('/roles/store', [RoleManagementController::class, 'store'])->name('role_management.store');
   Route::delete('/roles/delete/{id}', [RoleManagementController::class, 'destroy'])->name('role_management.delete');
   // Role Permission
   Route::get('/roles-permissions', [RolePermissionController::class, 'index'])->name('roles_permissions.index');
   Route::post('/assign-role', [RolePermissionController::class, 'assignRole'])->name('assignRoles');
   Route::post('/remove-role/{user}', [RolePermissionController::class, 'removeRole'])->name('removeRole');
   Route::post('/give-permission', [RolePermissionController::class, 'givePermission'])->name('givePermission');
   Route::post('/revoke-permission/{user}', [RolePermissionController::class, 'revokePermission'])->name('revokePermission');

   Route::put('/users/{id}/roles-permissions', [RolePermissionController::class, 'updateUserRolesPermissions'])->name('updateUserRolesPermissions');
   Route::delete('/users/{id}/roles-permissions', [RolePermissionController::class, 'deleteUserRolesPermissions'])->name('deleteUserRolesPermissions');
});

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'role:admin'], 'as' => 'admin.'], function () {
   // Route::group(['prefix' => 'admin', 'middleware' => 'admin', 'as' => 'admin.'], function () {
   Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');

   // view halaman admin
   Route::get('/dosen/data', [AdminController::class, 'dataDosen'])->name('dosens');
   Route::get('/matkul/data', [AdminController::class, 'dataMatkul'])->name('matkuls');
   Route::get('/prodi/data', [ProdiController::class, 'dataProdi'])->name('prodis');
   Route::get('/jurusan/data', [JurusanController::class, 'dataJurusan'])->name('jurusan');
   Route::get('/tahun/data', [TahunController::class, 'dataTahun'])->name('tahun');
   Route::get('/kajur/data', [PimpinanJurusanController::class, 'index'])->name('kajur');
   Route::get('/kaprodi/data', [PimpinanProdiController::class, 'index'])->name('kaprodi');
   Route::get('/kurikulum/data', [KurikulumController::class, 'index'])->name('kurikulum');
   Route::get('/matakuliah/data', [MatakuliahController::class, 'index'])->name('matakuliah');
   Route::get('/kbk/data', [KBKController::class, 'index'])->name('kbk');
   Route::get('/dosenkbk/data', [DosenKBKController::class, 'index'])->name('dosenkbk');
   Route::get('/matakuliahkbk/data', [MatakuliahKBKController::class, 'index'])->name('matakuliahkbk');
   Route::get('/mahasiswa/data', [MahasiswaController::class, 'index'])->name('mahasiswa');
   Route::get('/proposalta/data', [ProposalTaController::class, 'index'])->name('proposalta');

   //data API
   Route::get('/fetch-and-save-prodi', [ProdiController::class, 'fetchAndSaveData'])->name('prodi.api');
   Route::post('/prodi/save', [ProdiController::class, 'saveData'])->name('prodi.save');
   Route::get('/fetch-and-save-jurusan', [JurusanController::class, 'fetchAndSaveData'])->name('jurusan.api');
   Route::get('/fetch-and-save-kaprodi', [PimpinanProdiController::class, 'fetchAndSaveData'])->name('kaprodi.api');
   Route::get('/fetch-and-save-kajur', [PimpinanJurusanController::class, 'fetchAndSaveData'])->name('kajur.api');
   Route::get('/fetch-and-save-dosen', [DosenController::class, 'fetchAndSaveData'])->name('dosen.api');
   Route::get('/fetch-and-save-kurikulum', [KurikulumController::class, 'fetchAndSaveData'])->name('kurikulum.api');
   Route::get('/fetch-and-save-matakuliah', [MatakuliahController::class, 'fetchAndSaveData'])->name('matakuliah.api');
   Route::get('/fetch-and-save-mahasiswa', [MahasiswaController::class, 'fetchAndSaveData'])->name('mahasiswa.api');
   Route::get('/fetch-and-save-proposalta', [ProposalTaController::class, 'fetchAndSaveData'])->name('proposalta.api');


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

Route::get('/profile/edit/{id}', [ProfileController::class, 'edit'])->name('profile.edit');
Route::put('/profile/update/{id}', [ProfileController::class, 'update'])->name('profile.update');
Route::get('/pengampu/data', [DosenPengampuController::class, 'index'])->name('pengampu');



Route::group(['prefix' => 'verifikasi', 'middleware' => ['auth', 'verifikasi'], 'as' => 'verifikasi.'], function () {

   // CRUD Data RPS
   Route::get('/rps/data', [RPSController::class, 'index'])->name('rps');

   Route::get('/rps/create', [RPSController::class, 'create'])->name('rps.create');
   Route::post('/rps/store', [RPSController::class, 'store'])->name('rps.store');

   Route::get('/rps/edit/{id}', [RPSController::class, 'edit'])->name('rps.edit');
   Route::put('/rps/update/{id}', [RPSController::class, 'update'])->name('rps.update');
   Route::delete('/rps/delete/{id}', [RPSController::class, 'destroy'])->name('rps.delete');

   // CRUD Verif RPS
   Route::get('/verifrps/data', [VerifikasiRPSController::class, 'index'])->name('verifrps');

   Route::get('/verifrps/edit/{id}', [VerifikasiRPSController::class, 'edit'])->name('verifrps.edit');
   Route::put('/verifrps/update/{id}', [VerifikasiRPSController::class, 'update'])->name('verifrps.update');
   Route::delete('/verifrps/delete/{id}', [VerifikasiRPSController::class, 'destroy'])->name('verifrps.delete');

   // CRUD Data Soal
   Route::get('/soal/data', [SoalController::class, 'index'])->name('soal');

   Route::get('/soal/create', [SoalController::class, 'create'])->name('soal.create');
   Route::post('/soal/store', [SoalController::class, 'store'])->name('soal.store');

   Route::get('/soal/edit/{id}', [SoalController::class, 'edit'])->name('soal.edit');
   Route::put('/soal/update/{id}', [SoalController::class, 'update'])->name('soal.update');
   Route::delete('/soal/delete/{id}', [SoalController::class, 'destroy'])->name('soal.delete');

   // CRUD Verif Soal
   Route::get('/verifsoal/data', [VerifikasiSoalController::class, 'index'])->name('verifsoal');

   Route::get('/verifsoal/edit/{id}', [VerifikasiSoalController::class, 'edit'])->name('verifsoal.edit');
   Route::put('/verifsoal/update/{id}', [VerifikasiSoalController::class, 'update'])->name('verifsoal.update');
   Route::delete('/verifsoal/delete/{id}', [VerifikasiSoalController::class, 'destroy'])->name('verifsoal.delete');
});

Route::group(['prefix' => 'dosen', 'middleware' => 'dosen', 'as' => 'dosen.'], function () {
   Route::get('/dashboard', [DosenController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'pengurus', 'middleware' => 'pengurus', 'as' => 'pengurus.'], function () {
   Route::get('/dashboard', [PengurusController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'kaprodi', 'middleware' => 'kaprodi', 'as' => 'kaprodi.'], function () {
   Route::get('/dashboard', [KaprodiController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'kajur', 'middleware' => 'kajur', 'as' => 'kajur.'], function () {
   Route::get('/dashboard', [KajurController::class, 'index'])->name('dashboard');
});

Route::group(['prefix' => 'user', 'middleware' => 'user', 'as' => 'user.'], function () {
   Route::get('/dashboard', [UserController::class, 'index'])->name('dashboard');
});
