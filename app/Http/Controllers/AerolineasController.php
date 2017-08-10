<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Aerolinea;

class AerolineasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aerolineas = Aerolinea::paginate(5);
        $total = Aerolinea::count();
        return view('aerolineas.index',['aerolineas'=>$aerolineas, 'total'=>$total]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("aerolineas.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $aerolinea = new Aerolinea;
        $aerolinea->nombre = $request->nombre;
        $aerolinea->telefono = $request->telefono;

        if($aerolinea->save()){
            return redirect('/aerolineas');
        }else{
            return view("aerolineas.create");
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
        $aerolinea = Aerolinea::find($id);
        return view("aerolineas.edit",['aerolinea'=>$aerolinea]);
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
        $aerolinea = Aerolinea::find($id);
        $aerolinea->telefono=$request->telefono;

        if($aerolinea->save()) {
          return redirect('/aerolineas');
        } else {
          return view("aerolineas.edit");
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
      Aerolinea::destroy($id);
      return redirect('/aerolineas');
    }
}
