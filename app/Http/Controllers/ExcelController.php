<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Reservacion;

class ExcelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function exportForms() {
      \Excel::create('Reservaciones-reporte', function($excel) {
        $reservaciones = Reservacion::all();
        $excel->sheet('Excel sheet', function($sheet) use($reservaciones) {
          $sheet->row(1, [
            'ID', 'cliente', 'email','Origen', 'Destino', 'no_asiento', 'precio'
          ]);
          foreach($reservaciones as $index => $reservacion) {
            $sheet->row($index+2, [
              $reservacion->id,
              $reservacion->cliente->nombre,
              $reservacion->cliente->email,
              $reservacion->vuelo->aeropuerto_salida->ciudad->nombre,
              $reservacion->vuelo->Aeropuerto_llegada->ciudad->nombre,
              $reservacion->no_asiento,
              $reservacion->vuelo->precio
            ]);
          }
        });
      })->export('xls');


    }
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
        //
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
