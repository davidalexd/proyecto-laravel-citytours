@extends('layouts.plantilla')

@section('title','destinos')

@section('content')

<div class="contenedor_portada">
<div class="portada"></div>
<h1>Directorio de destinos  aqui</h1> 
</div>
<section class="hero-section">
  <div class="card-grid">
  @foreach ($destinos as $destino)
    <a style="border: none; border-radius:50px;" class="card" href="{{route('subdestinos.show',$destino->id)}}">
      <div class="card__background" style="background-image: url({{asset('storage/img/'.$destino->imagen)}})"></div>
      <div class="card__content">
        <p class="card__category">DESTINO:</p>
        <h3 class="card__heading">{{$destino->departamento}} </h3>
      </div>
    </a>
    @endforeach
  <div> 
</section>   

{{$destinos->links()}}


      



