<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MostrarDestinoController;
use App\Http\Controllers\MostrarSubdestinoController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CompraController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AdminController;
//Dashboard
use App\Http\Controllers\Admin\DepartamentoController;
use App\Http\Controllers\Admin\LugaresTuristicoController;
use App\Http\Controllers\Admin\TourController;
use App\Http\Controllers\Admin\ViajeController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\MisboletasController;
use App\Mail\BoletasMailController;
use Illuminate\Support\Facades\Mail;

use Illuminate\Support\Facades\Auth;


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

Route::get('/',HomeController::class)->name('home');



Route::get('destinos', [MostrarDestinoController::class,'index'])->name('destinos.index');


Route::get('destinos/{destino}', [MostrarSubdestinoController::class,'show'])->name('subdestinos.show');

Route::get('destinos/comprar/{idlugarTuristico}', [CompraController::class,'show'])->middleware(['auth'])->name('compra.show');


Route::post('destinos/compra',[CompraController::class,'store'])->middleware(['auth'])->name('compra.store');


Route::get('boleta/{ultima}',[MailController::class,'index'])->middleware(['auth'])->name('boleta.build');


Route::get('Viewboletas',[MisboletasController::class,'index'])->middleware(['auth'])->name('Viewboletas.index');


/*Route::get('boleta/{ultima}',function(){
$correo= new BoletasMailController();
Mail::to('davidalexd1234@gmail.com')->send($correo);
return 'sadfasd';
});
*/



//Dashboard
Route::get('admin',[AdminController::class,'index'])->name('admin.index')->middleware(['admin']);
Route::resource('admin/departamento', DepartamentoController::class)->middleware(['admin']);
Route::resource('admin/lugares', LugaresTuristicoController::class)->middleware(['admin']);
Route::resource('admin/tour', TourController::class)->middleware(['admin']);
Route::resource('admin/viaje', ViajeController::class)->middleware(['admin']);




Route::get('/registrar',[UserController::class,'create']);


Auth::routes(['verify' => true]);
