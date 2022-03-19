<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Departamento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

/**
 * Class DepartamentoController
 * @package App\Http\Controllers\Admin
 */
class DepartamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $departamentos = Departamento::paginate();

        return view('admin.departamento.index', compact('departamentos'))
            ->with('i', (request()->input('page', 1) - 1) * $departamentos->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departamento = new Departamento();
        return view('admin.departamento.create', compact('departamento'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Departamento::$rules);

        $image = $request->file('imagen')->getClientOriginalName();
        $path = $request->file('imagen')->storeAs('public/img',$image);
        
        $departamento = Departamento::insert([
            'departamento' => $request->departamento,
            'imagen' => $image
        ]);
        return redirect()->route('departamento.index')
            ->with('success', 'Departamento created successfully.');
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
        $departamento = Departamento::find($id);

        return view('admin.departamento.show', compact('departamento'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $departamento = Departamento::find($id);

        return view('admin.departamento.edit', compact('departamento'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Departamento $departamento
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Departamento $departamento)
    {
        request()->validate(Departamento::$rules);

        $old_image = $departamento->image;
        $dirs = Storage::delete('public/img/'.$old_image);

        $new_image = $request->file('imagen')->getClientOriginalName();
        $path = $request->file('imagen')->storeAs('public/img',$new_image);

        $departamento->update([
            'departamento' => $request->departamento,
            'imagen' => $new_image
        ]);

        return redirect()->route('departamento.index')
        ->with('success', 'Departamento updated successfully');
        
        
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $departamento = Departamento::find($id);
        $img_path = $departamento->image;
        $departamento->delete();
        $dirs = Storage::delete('public/img/'.$img_path);
        return redirect()->route('departamento.index')
            ->with('success', 'Departamento deleted successfully');
    }
}
