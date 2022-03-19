@extends('layouts.plantilla')

  <section class="cabecera">
  <section class="imagen">           
      <img src="{{asset('storage/img/'.$destino->imagen)}}" alt="">
  <h2>{{$destino->departamento}}</h2>
  </section>
  </section>
    @section('content')
      <div class="boton-regresar">
        <a  href="{{route('destinos.index')}}">Volver a destinos</a>
      </div>

       <section class="contenido">
        <section class="subdestinos-cont">

            <!--- Carrusel de Boostrap-->

            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <!-- Botones de Cambio -->

                    @foreach ($subdestinos as $subdestino) 
                      @if ($loop->first)
                      <li data-target="#carouselExampleIndicators" data-slide-to="{{$loop->index}}" class="carouselItem active" ></li>
                      @else
                      <li data-target="#carouselExampleIndicators" data-slide-to="{{$loop->index}}" class="carouselItem" ></li>
                      @endif
                      
                     @endforeach
                </ol>

                <!-- Sudestinos -->
                <div class="carousel-inner">

                @foreach ($subdestinos as $subdestino)

                  @if ($loop->first)
                  
                  <div class="carousel-item active" index="{{$subdestino->turisticoid}}">
                      <a href="{{route('compra.show',$subdestino->turisticoid)}}">
                        <img class="d-block w-100" src="{{asset('storage/img/'.$subdestino->imagenL)}}" >
                        
                        <div class="carousel-caption d-none d-md-block">
                          <h5>{{$subdestino->lugar_turistico}}</h5>
                          <p>Te da la Bienvenida </p>
                        </div>
                      </a>
                      
                    </div>
                  @else
                  <div class="carousel-item" index="{{$subdestino->turisticoid}}">
                    <a href="{{route('compra.show',$subdestino->turisticoid)}}">
                      <img class="d-block w-100" src="{{asset('storage/img/'.$subdestino->imagenL)}}" >
                      <div class="carousel-caption d-none d-md-block">
                        <h5>{{$subdestino->lugar_turistico}}</h5>
                        <p>Te da la Bienvenida</p>
                      </div>
                    </a>
                  </div>
                  @endif
                  
                @endforeach
                </div>

                <!-- Botones de Cambio -->
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>

                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>                  
                </a>
                
              </div>
              
              
            <!--- Carrusel de Boostrap (FIN)-->


        </section>
        <section class="descripcion">
<!--             <section class="cont-letra"> 
                <p>Descripcion Destino
                </p>
            </section> -->
            <section class="Sitios-Turisticos">
                <H3>Tours</H3>
                
                    <section class="cont-sitios">
                        
                      @foreach ($subdestinos as $subdestino) 
                        <div class="sitio1">
                          <a href="#{{$subdestino->idtour}}" >
                            <img src="{{asset('storage/img/'.$subdestino->imagenT)}}" alt="" >
                            <p>{{$subdestino->tour}}</p>
                          </a>
                        </div>
                        @endforeach
       
                      </section>


            </section>

            <!-- Boton de Zoom-->
            @foreach ($subdestinos as $subdestino)
              
              <section class="pantacompleta" id="{{$subdestino->idtour}}">
                    <div class="botones-pantallacompleta">      
                      <p>{{$subdestino->tour}}</p>
                      <a href="" class="botoncerrar">X</a>
                  </div>
                  <div class="imagezoom">
                    <a href=""><img src="{{asset('storage/img/'.$subdestino->imagenT)}}" alt=""></a>
                  </div>
                  <div class="contenedor-letra">
                  <p>{{$subdestino->details}}</p>
                  </div>

              </section>
            @endforeach

              
           
        </section>
    </section>

@endsection