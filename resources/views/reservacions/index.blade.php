@extends('layouts.app')
@section('content')
<div class="container">
  <div class="" style="font-size:2em;">
    Total de registrados:<b> {{$total}}</b>
  </div>
  <div class="text-right">
     <a href="{{url('/export-forms')}}" class="btn btn-success">Exportar a Excel</a>
  </div>
</div>
<div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>cliente</th>
        <th>email</th>
        <th>Origen</th>
        <th>Destino</th>
        <th>no_asiento</th>
        <th>precio</th>
      </tr>
    </thead>
    <tbody>
      @foreach($reservaciones as $reservacion)
      <tr>
        <td>{{$reservacion->id}}</td>
        <td>{{$reservacion->cliente->nombre}}</td>
        <td>{{$reservacion->cliente->email}}</td>
        <td>{{$reservacion->vuelo->aeropuerto_salida->ciudad->nombre}}</td>
        <td>{{$reservacion->vuelo->Aeropuerto_llegada->ciudad->nombre}}</td>
        <td>{{$reservacion->no_asiento}}</td>
        <td>{{$reservacion->vuelo->precio}}</td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
<div class="col-xs-12">
  <center>
    {{ $reservaciones->links() }}
  </center>
</div>
@endsection
