<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Vuelo;
use  App\Avion;
use  App\Aeropuerto_salida;
use  App\Aeropuerto_llegada;
use App\Hotel;
use App\Ciudad;
use Illuminate\Support\Facades\Auth;
//use  App\Aerolinea;
class VuelosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user()){
          $vuelos = Vuelo::Paginate(5);
          $total = Vuelo::count();
          return view('vuelos.index',['vuelos'=>$vuelos,'total'=>$total]);
        }else {
          $ciudad = \Request::get('ciudad');
          if($ciudad){
            $ciudad = Ciudad::where('nombre',$ciudad)->first();
            $ciudad_id = $ciudad->id;
            $aeropuerto = Aeropuerto_llegada::where('ciudad_id',$ciudad_id)->first();
            $aeropuerto_llegada_id = $aeropuerto->id;
            $vuelos = Vuelo::where('aeropuerto_llegada_id',$aeropuerto_llegada_id)->get();
            $hoteles = Hotel::where('ciudad_id',$ciudad_id)->get();
            return view('vuelos.index',
            [
              'aux'=>$ciudad_id,
              'hoteles'=>$hoteles,
              'vuelos'=>$vuelos,
              'ciudad'=>$ciudad
            ]);
          }else {
            $vuelos = Vuelo::take(6)->get();
            $hoteles = Hotel::take(6)->get();
            return view('vuelos.index',
            [
              'hoteles'=>$hoteles,
              'vuelos'=>$vuelos,
              'ciudad'=>$ciudad
            ]);
          }
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $aviones = Avion::pluck('no_avion','id');
        $salidas = Aeropuerto_salida::pluck('nombre','id');
        $llegadas = Aeropuerto_llegada::pluck('nombre','id');
        return view("vuelos.create",
        [
          'aviones'=>$aviones,
          'salidas'=>$salidas,
          'llegadas'=>$llegadas
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

        $aviones = Avion::pluck('no_avion','id');
        $salidas = Aeropuerto_salida::pluck('nombre','id');
        $llegadas = Aeropuerto_llegada::pluck('nombre','id');

        $vuelo =  new Vuelo;
        $vuelo->fecha_salida            = $request->fecha_salida;
        $vuelo->hora_salida             = $request->hora_salida;
        $vuelo->fecha_llegada           = $request->fecha_llegada;
        $vuelo->hora_llegada            = $request->hora_llegada;
        $vuelo->aeropuerto_llegada_id   = $request->aeropuertos_llegadas_id;
        $vuelo->avion_id                = $request->aviones_id;
        $vuelo->aeropuerto_salida_id    = $request->aeropuertos_salidas_id;
        $vuelo->precio                  = $request->precio;


        if($vuelo->save()) {
          return redirect('/vuelos');
        } else {
          return view("vuelos.create",
          [
            'aviones'=>$aviones,
            'salidas'=>$salidas,
            'llegadas'=>$llegadas
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
      $vuelo = Vuelo::find($id);
      $aviones = Avion::pluck('no_avion','id');
      $salidas = Aeropuerto_salida::pluck('nombre','id');
      $llegadas = Aeropuerto_llegada::pluck('nombre','id');
      return view("vuelos.edit",
      [
        'vuelo'=>$vuelo,
        'aviones'=>$aviones,
        'salidas'=>$salidas,
        'llegadas'=>$llegadas
      ]);
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
        $vuelo = Vuelo::find($id);
        $aviones = Avion::pluck('no_avion','id');
        $salidas = Aeropuerto_salida::pluck('nombre','id');
        $llegadas = Aeropuerto_llegada::pluck('nombre','id');

        $vuelo->precio                  = $request->precio;

        if($vuelo->save()) {
          return redirect('/vuelos');
        } else {
          return view("vuelos.edit",
          [
            'vuelo'=>$vuelo,
            'aviones'=>$aviones,
            'salidas'=>$salidas,
            'llegadas'=>$llegadas
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
      Vuelo::destroy($id);
      return redirect('/vuelos');
    }
}
