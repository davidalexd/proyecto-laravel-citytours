<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Tour;
use App\Models\Admin\LugaresTuristico;
use Illuminate\Http\Request;

/**
 * Class TourController
 * @package App\Http\Controllers
 */
class TourController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tours = Tour::join('lugares_turisticos','lugares_turisticos.id','=','tours.id_lugar_turistico')
                        ->select('tours.*','lugares_turisticos.lugar_turistico')                
                        ->paginate();

        return view('admin.tour.index', compact('tours'))
            ->with('i', (request()->input('page', 1) - 1) * $tours->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tour = new Tour();
        $lugares = LugaresTuristico::pluck('lugar_turistico','id');
        return view('admin.tour.create', compact('tour','lugares'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Tour::$rules);

        $image = $request->file('imagen')->getClientOriginalName();
        $path = $request->file('imagen')->storeAs('public/img',$image);

        $tour = Tour::insert([
            'tour' => $request->tour,
            'details' => $request->details,
            'imagen' => $image,
            'id_lugar_turistico' => $request->id_lugar_turistico
        ]);

        return redirect()->route('tour.index')
            ->with('success', 'Tour creado.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tour = Tour::find($id);
        
        return view('admin.tour.show', compact('tour'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tour = Tour::find($id);
        $lugares = LugaresTuristico::pluck('lugar_turistico','id');
        return view('admin.tour.create', compact('tour','lugares'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Tour $tour
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tour $tour)
    {
        request()->validate(Tour::$rules);

        $old_image = $tour->image;
        $dirs = Storage::delete('public/img/'.$old_image);

        $new_image = $request->file('imagen')->getClientOriginalName();
        $path = $request->file('imagen')->storeAs('public/img',$new_image);

        $tour->update([
            'tour' => $request->tour,
            'details' => $request->details,
            'imagen' => $new_image,
            'id_lugar_turistico' => $request->id_lugar_turistico
        ]);

        return redirect()->route('admin.tour.index')
            ->with('success', 'Tour updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $tour = Tour::find($id);
        $img_path = $tour->image;
        $tour->delete();
        $dirs = Storage::delete('public/img/'.$img_path);
        return redirect()->route('admin.tour.index')
            ->with('success', 'Tour deleted successfully');
    }
}
