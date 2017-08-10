@extends('layouts.app')
@section('content')
<div class="col-md-2"></div>
  <div class="col-md-6">
    <center><h1>Actualización de télefono del vuelo</h1></center>
  {!!Form::open(['url' => '/hotels/'.$hotel->id, 'method' => 'PATCH', 'class' => 'inline-block', 'files' => true]) !!}

    <p>Nombre del hotel: {{$hotel->nombre}}</p>

    <p>Ciudad: {{$hotel->ciudad->nombre}} </p>

    Telefono
    {{ Form::text('telefono','',['class'=>'form-control'])   }}

    
    <br><input type="submit" class="btn btn-success" value="guardar">
  {!! Form::close() !!}

@endsection
