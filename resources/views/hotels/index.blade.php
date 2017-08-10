@extends('layouts.app')
@section('content')
<div class="container">
  <div class="" style="font-size:2em;">
    Total de registrados:<b> {{$total}}</b>
  </div>
</div>
<div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Ciudad</th>
        <th>Telefono</th>
        <th>Habitaciones</th>
      </tr>
    </thead>
    <tbody>
      @foreach($hoteles as $hotel)
      <tr>
        <td>{{$hotel->id}}</td>
        <td>{{$hotel->nombre}}</td>
        <td>{{$hotel->ciudad->nombre}}</td>
        <td>{{$hotel->telefono}}</td>
        <td>{{$hotel->numeroHabitaciones}}</td>
        <td><a class="col-xs-8 btn btn-success" href="{{url('/hotels/'.$hotel->id.'/edit')}}">Editar</a></td>
        <td><a onclick ="eliminarHotel({{$hotel->id}})" class="col-xs-8 btn btn-danger">Eliminar</a></td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
<div class="col-xs-12">
  <center>
    {{ $hoteles->links() }}
  </center>
</div>
@endsection
