<?php


namespace App\Http\Controllers;

use App\Models\Admin\Departamento;

use Illuminate\Http\Request;

class MostrarDestinoController extends Controller
{
    public function index(){
        $destinos= Departamento::paginate();

        return view('destinos.index',compact('destinos'));

    }
}
