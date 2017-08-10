@extends('layouts.app')
@section('content')
  @if(Auth::user())
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
          <th>Origen</th>
          <th>Destino</th>
          <th>Fecha de salida</th>
          <th>Hora de salida</th>
          <th>Aeropuerto de salida</th>
          <th>Fecha de llegada</th>
          <th>Hora de llegada</th>
          <th>Aeropuerto de llegada</th>
          <th>Numero de serie del Avión</th>
          <th>Precio</th>
        </tr>
      </thead>
      <tbody>
        @foreach($vuelos as $vuelo)
        <tr>
          <td>{{$vuelo->id}}</td>
          <td>{{$vuelo->avion->aerolinea->nombre}}</td>
          <td>{{$vuelo->aeropuerto_salida->ciudad->nombre}}</td>
          <td>{{$vuelo->Aeropuerto_llegada->ciudad->nombre}}</td>
          <td>{{$vuelo->fecha_salida}}</td>
          <td>{{$vuelo->hora_salida}}</td>
          <td>{{$vuelo->aeropuerto_salida->nombre}}</td>
          <td>{{$vuelo->fecha_llegada}}</td>
          <td>{{$vuelo->hora_llegada}}</td>
          <td>{{$vuelo->aeropuerto_llegada->nombre}}</td>
          <td>{{$vuelo->avion->no_avion}}</td>
          <td>{{$vuelo->precio}}</td>
          <td><a class="col-xs-12 btn btn-success" href="{{url('/vuelos/'.$vuelo->id.'/edit')}}">Editar</a></td>
          <td><a class="col-xs-12 btn btn-danger" onclick="eliminarVuelo({{$vuelo->id}})">Eliminar</a></td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
  <div class="col-xs-12">
    <center>
      {{ $vuelos->links() }}
    </center>
  </div>
  @else
    <div class="col-md-12">
      <div class="col-md-4"></div>
      <div class="col-md-4">
        {!!Form::open(['url' => '/vuelos', 'method' => 'GET', 'class'=>'form']) !!}
        <label>Buscar Ciudad:</label>
        {{ Form::text('ciudad','',['class' => 'form-control', 'placeholder'=>'Ciudad'])}}
        <button type="submit" class="btn btn-primary">Buscar</button>
        {!! Form::close() !!}
      </div>
    </div>
    @if($ciudad)
    <div class="col-md-12">
      <center><h1>Vuelos</h1></center>
    @foreach($vuelos as $vuelo)
      <div class="col-md-4 padding-bottom">
        <h2>Aerolínea: {{$vuelo->avion->aerolinea->nombre}}</h2>
        <h3 style="color: green;">Origen: {{$vuelo->aeropuerto_salida->ciudad->nombre}}</h3>
        <h3 style="color: red;">Destino: {{$vuelo->Aeropuerto_llegada->ciudad->nombre}}</h3>
        <h4 style="color: green;">Fecha de salida: {{$vuelo->fecha_salida}}</h4>
        <p style="color: green;">Hora de salida: {{$vuelo->hora_salida}}</p>
        <h4 style="color: green;">Aeropuerto Salida: {{$vuelo->aeropuerto_salida->nombre}}</h4>
        <h4 style="color: red;">Fecha de Llega: {{$vuelo->fecha_llegada}}</h4>
        <p style="color: red;">Hora de llegada: {{$vuelo->hora_llegada}}</p>
        <h4 style="color: red;">Aeropuerto Llegada: {{$vuelo->aeropuerto_llegada->nombre}}</h4>
        <p>Numero de serie del Avión: {{$vuelo->avion->no_avion}}</p><br>
        <span>Precio: {{$vuelo->precio}}</span><br>
        {!!Form::open(['url' => '/reservacions', 'method' => 'POST', 'class' => 'inline-block']) !!}
          Nombre:
          {{ Form::text('nombre','',['class'=>'form-control'])}}
          1er Apellido:
          {{ Form::text('apellidoP','',['class'=>'form-control'])}}
          2do Apellido:
          {{ Form::text('apellidoM','',['class'=>'form-control'])}}
          e-mail:
          {{ Form::text('email','',['class'=>'form-control'])}}
          No asiento:
          {{ Form::number('no_asiento','',['class'=>'form-control'])}}
          <input type="hidden" name="id" value="{{$vuelo->id}}">
          <input type="hidden" name="aerolinea" value="{{$vuelo->avion->aerolinea->nombre}}">
          <input type="hidden" name="origen" value="{{$vuelo->aeropuerto_salida->ciudad->nombre}}">
          <input type="hidden" name="destino" value="{{$vuelo->Aeropuerto_llegada->ciudad->nombre}}">
          <input type="hidden" name="fecha_salida" value="{{$vuelo->fecha_salida}}">
          <input type="hidden" name="hora_salida" value="{{$vuelo->hora_salida}}">
          <input type="hidden" name="aeropuerto_salida" value="{{$vuelo->aeropuerto_salida->nombre}}">
          <input type="hidden" name="fecha_llegada" value="{{$vuelo->fecha_llegada}}">
          <input type="hidden" name="hora_llegada" value="{{$vuelo->hora_llegada}}">
          <input type="hidden" name="aeropuerto_llegada" value="{{$vuelo->aeropuerto_llegada->nombre}}">
          <input type="hidden" name="no_serie" value="{{$vuelo->avion->no_avion}}">
          <input type="hidden" name="precio" value="{{$vuelo->precio}}">
          <input type="submit" class="col-xs-3 btn btn-success" name="" value="Pagar">
        {!! Form::close() !!}
      </div>
    @endforeach
    </div>
    <div class="col-md-12">
      <center><h1>Hoteles</h1></center>
    @foreach($hoteles as $hotel)
    <div class="col-md-4 padding-bottom">
      <h2>Nombre: {{$hotel->nombre}}</h2>
      <h3>Ciudad: {{$hotel->ciudad->nombre}}</h2>
      <h3>Teléfono: {{$hotel->telefono}}</h3>
      <h3>Numero de Habitaciones: {{$hotel->numeroHabitaciones}}</h3>
    </div>
    @endforeach
  </div>
    @else
    <div class="col-md-12">
      <center><h1>Vuelos</h1></center>
    @foreach($vuelos as $vuelo)
      <div class="col-md-4 padding-bottom">
        <h2>Aerolínea: {{$vuelo->avion->aerolinea->nombre}}</h2>
        <h3 style="color: green;">Origen: {{$vuelo->aeropuerto_salida->ciudad->nombre}}</h3>
        <h3 style="color: red;">Destino: {{$vuelo->Aeropuerto_llegada->ciudad->nombre}}</h3>
        <h4 style="color: green;">Fecha de salida: {{$vuelo->fecha_salida}}</h4>
        <p style="color: green;">Hora de salida: {{$vuelo->hora_salida}}</p>
        <h4 style="color: green;">Aeropuerto Salida: {{$vuelo->aeropuerto_salida->nombre}}</h4>
        <h4 style="color: red;">Fecha de Llega: {{$vuelo->fecha_llegada}}</h4>
        <p style="color: red;">Hora de llegada: {{$vuelo->hora_llegada}}</p>
        <h4 style="color: red;">Aeropuerto Llegada: {{$vuelo->aeropuerto_llegada->nombre}}</h4>
        <p>Numero de serie del Avión: {{$vuelo->avion->no_avion}}</p><br>
        <span>Precio: {{$vuelo->precio}}</span><br>
      </div>
    @endforeach
    </div>
    <div class="col-md-12">
      <center><h1>Hoteles</h1></center>
    @foreach($hoteles as $hotel)
    <div class="col-md-3 padding-bottom">
      <h2>Nombre: {{$hotel->nombre}}</h2>
      <h3>Ciudad: {{$hotel->ciudad->nombre}}</h2>
      <h3>Teléfono: {{$hotel->telefono}}</h3>
      <h3>Numero de Habitaciones: {{$hotel->numeroHabitaciones}}</h3>
    </div>
    @endforeach
  </div>
    @endif
  @endif
@endsection
