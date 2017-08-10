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
        <th>Aerolinea</th>
        <th>Telefono</th>
      </tr>
    </thead>
    <tbody>
      @foreach($aerolineas as $aerolinea)
      <tr>
        <td>{{$aerolinea->id}}</td>
        <td>{{$aerolinea->nombre}}</td>
        <td>{{$aerolinea->telefono}}</td>
        <td><a class="col-xs-8 btn btn-success" href="{{url('/aerolineas/'.$aerolinea->id.'/edit')}}">Editar</a></td>
        <td><a class="col-xs-8 btn btn-danger" onclick="eliminarAerolinea({{$aerolinea->id}})">Eliminar</a></td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
<div class="col-xs-12">
  <center>
    {{ $aerolineas->links() }}
  </center>
</div>
@endsection
