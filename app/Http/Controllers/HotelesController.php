<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hotel;
use App\Ciudad;

class HotelesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hoteles = Hotel::paginate(5);
        $total = Hotel::count();
        return view('hotels.index',['hoteles'=>$hoteles,'total'=>$total]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $ciudades = Ciudad::pluck('nombre','id');
        return view("hotels.create",
            [
                'ciudades'=>$ciudades,
            ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ciudades = Ciudad::pluck('id','id');

        $hotel = new Hotel;
        $hotel->telefono = $request->telefono;

        if($hotel->save()){
            return redirect('/hotels');
        }else{
            return view("hotels.create",
            [
                'ciudades'=>$ciudades,
            ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $ciudades = Ciudad::pluck('id','id');
        $hotel = Hotel::find($id);
        return view('hotels.edit',['ciudades'=>$ciudades,'hotel'=>$hotel]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $hotel = Hotel::find($id);
        $ciudades = Ciudad::pluck('id','id');

        $hotel->nombre            = $request->nombre;
        $hotel->telefono             = $request->telefono;
        $hotel->ciudad_id           = $request->ciudad_id;

        if($hotel->save()) {
          return redirect('/hotels');
        } else {
          return view("hotels.edit",
          [
            'ciudades'=>$ciudades,
          ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Hotel::destroy($id);
        return redirect('/hotels');
    }
}
