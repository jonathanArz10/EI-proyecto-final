@extends('layouts.app')
@section('content')
  <div class="col-md-2"></div>
  <div class="col-md-6">
    <center><h1>Actualización de aerolinea</h1></center>
    {!!Form::open(['url' => '/aerolineas/'.$aerolinea->id, 'method' => 'PATCH', 'class' => 'inline-block', 'files' => true]) !!}

      <label>Nombre de la aerolinea: </label>
      {{$aerolinea->nombre}}

      <br><label>Telefono:</label>
      {{ Form::text('telefono','',['class'=>'form-control'])   }}
      <input type="submit" class="btn btn-success" value="guardar">
    {!! Form::close() !!}
  </div>
@endsection
