<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ShoppingCarts;
use App\Reservacion;
use App\Cliente;
//CORREO ELECTRONICO
use Mail;
use App\Mail\OrderConfirmation;

class ReservacionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $reservaciones = Reservacion::Paginate(5);
      $total =  Reservacion::count();
      return view('reservacions.index',['reservaciones'=>$reservaciones,'total'=>$total]);
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
        $cliente = new Cliente;
        $cliente->nombre = $request->nombre;
        $cliente->apellidoP = $request->apellidoP;
        $cliente->apellidoM = $request->apellidoM;
        $cliente->email = $request->email;
        if ($cliente->save()) {
          $reservacion = new Reservacion;
          $id = Cliente::lastID();
          $reservacion->no_asiento = $request->no_asiento;
          $reservacion->vuelo_id   = $request->id;
          $reservacion->cliente_id = $id;
          if ($reservacion->save()) {
            $sendTo = $request->email;
            Mail::to($sendTo)->send(new OrderConfirmation($request));
            return redirect('/vuelos');
          }
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
        //
    }
}
