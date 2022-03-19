<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Departamento;
use App\Models\Admin\LugaresTuristico;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
/**
 * Class LugaresTuristicoController
 * @package App\Http\Controllers
 */
class LugaresTuristicoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lugaresTuristicos = LugaresTuristico::join('departamentos','lugares_turisticos.id_departamento','=','departamentos.id')
                                ->select('lugares_turisticos.*','departamentos.departamento')                    
                                ->paginate();

        return view('admin.lugares-turistico.index', compact('lugaresTuristicos'))
            ->with('i', (request()->input('page', 1) - 1) * $lugaresTuristicos->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $lugaresTuristico = new LugaresTuristico();
        $departamento = Departamento::pluck('departamento','id');

        return view('admin.lugares-turistico.create', compact('lugaresTuristico','departamento'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(LugaresTuristico::$rules);

        $image = $request->file('imagen')->getClientOriginalName();
        $path = $request->file('imagen')->storeAs('public/img',$image);

        $lugaresTuristico = LugaresTuristico::insert([
            'lugar_turistico' => $request->lugar_turistico,
            'imagen' => $image,
            'id_departamento' => $request->id_departamento
        ]);

        return redirect()->route('lugares.index')
            ->with('success', 'LugaresTuristico created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $lugaresTuristico = LugaresTuristico::find($id);

        return view('admin.lugares-turistico.show', compact('lugaresTuristico'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $lugaresTuristico = LugaresTuristico::find($id);
        $departamento = Departamento::pluck('departamento','id');
        
        return view('admin.lugares-turistico.edit', compact('lugaresTuristico','departamento'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  LugaresTuristico $lugaresTuristico
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, LugaresTuristico $lugare)
    {
        request()->validate(LugaresTuristico::$rules);

        $old_image = $lugare->image;
        $dirs = Storage::delete('public/img/'.$old_image);

        $new_image = $request->file('imagen')->getClientOriginalName();
        $path = $request->file('imagen')->storeAs('public/img',$new_image);
        
        
        $res = $lugare->update([
            'lugar_turistico' => $request->lugar_turistico,
            'imagen' => $new_image,
            'id_departamento' => $request->id_departamento
        ]);

        if($res){
            return redirect()->route('lugares.index')
                ->with('success', 'Lugar Turistico se actualizo correctamente');
        }else{
            return redirect()->route('lugares.index')
                ->with('error', 'Hubo un error');
        }

    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $lugaresTuristico = LugaresTuristico::find($id);
        $img_path = $lugaresTuristico->image;
        $lugaresTuristico->delete();
        $dirs = Storage::delete('public/img/'.$img_path);
        
        return redirect()->route('lugares.index')
            ->with('success', 'LugaresTuristico deleted successfully');
    }
}
