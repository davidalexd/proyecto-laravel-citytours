<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Viaje;
use App\Models\Admin\LugaresTuristico;
use Illuminate\Http\Request;

/**
 * Class ViajeController
 * @package App\Http\Controllers\Admin
 */
class ViajeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $viajes = Viaje::join('lugares_turisticos','lugares_turisticos.id','=','viajes.id_lugar')
                        ->select('viajes.*','lugares_turisticos.lugar_turistico')
                        ->paginate();

        return view('admin.viaje.index', compact('viajes'))
            ->with('i', (request()->input('page', 1) - 1) * $viajes->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $viaje = new Viaje();
        $lugares = LugaresTuristico::pluck('lugar_turistico','id');
        return view('admin.viaje.create', compact('viaje','lugares'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Viaje::$rules);

        $viaje = Viaje::create($request->all());
        
        return redirect()->route('viaje.index')
            ->with('success', 'Viaje created successfully.');
        // return dd($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $viaje = Viaje::find($id);
        $lugares = LugaresTuristico::pluck('lugar_turistico','id');
        return view('admin.viaje.show', compact('viaje','lugares'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $viaje = Viaje::find($id);
        $lugares = LugaresTuristico::pluck('lugar_turistico','id');
        return view('admin.viaje.edit', compact('viaje','lugares'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Viaje $viaje
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Viaje $viaje)
    {
        request()->validate(Viaje::$rules);

        $viaje->update($request->all());

        return redirect()->route('viaje.index')
            ->with('success', 'Viaje updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $viaje = Viaje::find($id)->delete();

        return redirect()->route('viaje.index')
            ->with('success', 'Viaje deleted successfully');
    }
}
