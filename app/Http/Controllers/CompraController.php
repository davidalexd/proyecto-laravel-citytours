<?php

namespace App\Http\Controllers;

use App\Mail\BoletasMailController;
use App\Models\Admin\LugaresTuristico;

use App\Models\Admin\Viaje;
use App\Models\Boleta;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB as FacadesDB;
use Illuminate\Support\Facades\DB;
use Viajes;

class compraController extends Controller
{

    public function index(){
        

    }

    public function show($lugarid){
        $viaje= Viaje::where('id_lugar',$lugarid)->pluck('date','id');
        $lugar= LugaresTuristico::find($lugarid);
    
        return view('compra.show',compact('lugar','viaje'));
    }
    public function getViaje($id){
        return Viaje::find($id);
    }
    public function store(Request $request){

        $p0 = $request->fecha;
        $p1 = $request->id_lugar;
        $p2 = $request->id_travel;
        $p3 = $request->cantidad;
        $p4 = $request->user;
        DB::select(DB::raw("CALL BOLETA ('$p0', $p1, $p2, $p3, $p4)"));
        DB::select(DB::raw("CALL stock_tickes ($p2, $p3)"));
        
    
      return  redirect()->route('boleta.build',$p4);
    
    }
}
