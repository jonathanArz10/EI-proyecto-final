@extends('layouts.app')
@section('content')
  <div class="col-md-2"></div>
  <div class="col-md-6">
    <center><h1>Actualización de precio del vuelo</h1></center>
    {!!Form::open(['url' => '/vuelos/'.$vuelo->id, 'method' => 'PATCH', 'class' => 'inline-block', 'files' => true]) !!}

      <label>Fecha de salida: </label>
      {{$vuelo->fecha_salida}}

      <br><label>Hora de salida:</label>
      {{$vuelo->hora_salida}}

      <br><label>Fecha de llegada:</label>
      {{$vuelo->fecha_llegada}}

      <br><label>Hora de llegada:</label>
      {{$vuelo->hora_llegada}}

      <br><label>Precio:</label>
      {{ Form::number('precio','$vuelo->precio',['class'=>'form-control'])   }}
      <input type="submit" class="btn btn-success" value="guardar">
    {!! Form::close() !!}
  </div>


@endsection
