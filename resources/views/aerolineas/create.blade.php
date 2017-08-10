@extends('layouts.app')
@section('content')
<div class="col-md-2"></div>
<div class="col-md-6">
  <center><h1>Registro de aerolineas</h1></center>
  {!!Form::open(['url' => '/aerolineas/', 'method' => 'POST', 'class' => 'inline-block', 'files' => true]) !!}

    Nombre:
    {{ Form::text('nombre','',['class'=>'form-control'])   }}

    Telefono:
    {{ Form::text('telefono','',['class'=>'form-control'])   }}

    <input type="submit" class="btn btn-success" value="guardar">
  {!! Form::close() !!}

</div>
@endsection