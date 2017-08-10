<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Vuelo;

class ShoppingCartsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $vuelo = new Vuelo;
        $vuelo->idea                                = $request->id;
        $vuelo->avion->aerolinea->nombre            = $request->aerolinea;
        $vuelo->aeropuerto_salida->ciudad->nombre   = $request->origen;
        $vuelo->Aeropuerto_llegada->ciudad->nombre  = $request->destino;
        $vuelo->fecha_salida                        = $request->fecha_salida;
        $vuelo->hora_salida                         = $request->hora_salida;
        $vuelo->aeropuerto_salida->nombre           = $request->aeropuerto_salida;
        $vuelo->fecha_llegada                       = $request->fecha_llegada;
        $vuelo->hora_llegada                        = $request->hora_llegada;
        $vuelo->aeropuerto_llegada->nombre          = $request->aeropuerto_llegada;
        $vuelo->avion->no_avion                     = $request->no_serie;
        $vuelo->precio                              = $request->precio;

        \Session::push('cart.reservacion' $vuelo);
        return redirect('/vuelos');
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        \Session::forget('cart.Reservacion');
        return redirect('vuelos');
    }
}
