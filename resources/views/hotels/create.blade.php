@extends('layouts.app')
@section('content')
<div class="col-md-2"></div>
  <div class="col-md-6">
    <center><h1>Registro de hotel</h1></center>
  {!!Form::open(['url' => '/hotels/', 'method' => 'POST', 'class' => 'inline-block', 'files' => true]) !!}
	<div class="col-md-6">
	    Nombre del hotel:
	    {{ Form::text('nombre','',['class'=>'form-control'])   }}

	    Telefono:
	    {{ Form::text('telefono','',['class'=>'form-control'])   }}

	    <br>Ciudad:
	    {{ Form::select('ciudad_id',$ciudades,['class'=>'form-control'])   }}	  

	    <br><input type="submit" class="btn btn-success" value="Guardar">
    </div>
  {!! Form::close() !!}
@endsection