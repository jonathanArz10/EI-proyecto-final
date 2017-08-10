@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <center><h1>Hasta el aeropuerto y más allá</h1></center>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <div class="thumbnail">
                <a href="/vuelos">
                    <img src="/Images/vuelo.jpg" atl="Vuelo" style="width:100% ">
                        <div class="caption">
                            <p>Vuelos</p>
                        </div>
                </a>
            </div>  
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <a href="/hotels">
                    <img src="/Images/hotel.jpg" atl="Vuelo" style="width:100% ">
                        <div class="caption">
                            <p>Hoteles</p>
                        </div>
                </a>
            </div>  
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <a href="/aerolineas">
                    <img src="/Images/aerolinea.jpg" atl="Vuelo" style="width:100% ">
                        <div class="caption">
                            <p>Aerolineas</p>
                        </div>
                </a>
            </div>  
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <a href="/reservacions">
                    <img src="/Images/reservacion.jpg" atl="Vuelo" style="width:100%; height:373px" >
                        <div class="caption">
                            <p>Reservaciones</p>
                        </div>
                </a>
            </div>  
        </div>
    </div>
</div>
@endsection
