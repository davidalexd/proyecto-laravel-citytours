<?php

namespace App\Http\Controllers;

use Boletas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Boleta;
use Illuminate\Support\Facades\Auth;

class MisboletasController extends Controller
{
    public function index(){
        $id = Auth::user()->id;
        $query = Boleta::join('viajes', 'viajes.id', '=', 'boletas.id_travel')
        ->join('lugares_turisticos', 'lugares_turisticos.id', '=', 'viajes.id_lugar')
        ->join('departamentos', 'departamentos.id', '=', 'lugares_turisticos.id_departamento')
        ->select('departamentos.departamento','viajes.price','viajes.date','viajes.time','lugares_turisticos.lugar_turistico','boletas.quantity','viajes.discount','boletas.subtotal','boletas.total')
        ->where('boletas.id_user', '=',$id)
        ->get();
        return view('boleta.list',compact('query'));
    }
}
