@extends('layouts.app')
@section('content')
<div class="col-md-2"></div>
<div class="col-md-6">
  <center><h1>Registro de vuelo</h1></center>
  {!!Form::open(['url' => '/vuelos/', 'method' => 'POST', 'class' => 'inline-block', 'files' => true]) !!}

    Fecha de salida:
    {{ Form::text('fecha_salida','',['class'=>'form-control'])   }}

    Hora de salida:
    {{ Form::text('hora_salida','',['class'=>'form-control'])   }}

    Fecha de llegada:
    {{ Form::text('fecha_llegada','',['class'=>'form-control'])   }}

    Hora de llegada:
    {{ Form::text('hora_llegada','',['class'=>'form-control'])   }}

    No. de avión:
    {{ Form::select('aviones_id',$aviones,['class'=>'form-control'])   }}
    <br>
    Aeropuerto de salida:
    {{ Form::select('aeropuertos_salidas_id',$salidas,['class'=>'form-control'])   }}
    <br>
    Aeropuerto de llegadas:
    {{ Form::select('aeropuertos_llegadas_id',$llegadas,['class'=>'form-control'])   }}
    <br>
    Precio:
    {{ Form::number('precio','',['class'=>'form-control'])   }}
    <input type="submit" class="btn btn-success" value="guardar">
  {!! Form::close() !!}

</div>
@endsection
