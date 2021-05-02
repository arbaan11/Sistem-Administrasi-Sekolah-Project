<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PresensiController;
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

Route::get('/', [AuthController::class, 'showFormLogin'])->name('login');
Route::get('login', [AuthController::class, 'showFormLogin'])->name('login');
Route::post('login', [AuthController::class, 'login']);
Route::get('register', [AuthController::class, 'showFormRegister'])->name('register');
Route::post('register', [AuthController::class, 'register']);

Route::group(['middleware' => 'auth'], function () {

    Route::get('home', [HomeController::class, 'index'])->name('home');
    Route::get('logout', [AuthController::class, 'logout'])->name('logout');
});

Route::post('/simpan-masuk', [PresensiController::class, 'store'])->name('simpan-masuk');
Route::get('presensi-masuk', [PresensiController::class, 'index'])->name('presensi-masuk');
Route::get('presensi-keluar', [PresensiController::class, 'keluar'])->name('presensi-keluar');
Route::post('ubah-presensi', [PresensiController::class, 'presensipulang'])->name('ubah-presensi');
Route::get('filter-data', [PresensiController::class, 'halamanrekap'])->name('filter-data');
Route::get('filter-data/{tglawal}/{tglakhir}', [PresensiController::class, 'tampildatakeseluruhan'])->name('filter-data-keseluruhan');
Route::get('/transaksi', function () {
    return view('transaksi');
});

Route::get('/about', function () {
    return view('About');
});

Route::get('/tagihan', function () {
    return view('tagihan');
});

Route::get('/presensi', function () {
    return view('presensi');
});

Route::get('/data_guru', function () {
    return view('data_guru');
});

Route::get('/guru_karyawan', function () {
    return view('guru_karyawan');
});

Route::get('/transaksi', function () {
    return view('transaksi');
});

Route::get('/data_karyawan', function () {
    return view('data_karyawan');
});

Route::get('/data_siswa', function () {
    return view('data_siswa');
});
