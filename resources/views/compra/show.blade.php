@extends('layouts.plantilla')

@section('title','compra')

@section('content')

       <div class="contenedor-genera">
       
       <button class="btnregresar"><a  href="{{route('subdestinos.show',$lugar->id_departamento)}}">Regresar</a></button>

              <section class="contenedor-imagen">
                     <img src="{{asset('storage/img/'.$lugar->imagen)}}" alt="">
              </section>


              <section class="contenedor-formulario">
                     <h1>Descripcion del Vuelo: </h1>
                     
                     <form action="{{route('compra.store')}}" method="POST">
                            @csrf
                            <section class="tipo-de-viaje">
                            <h2>Seleccione los Detalles:</h2>
                            <div class="caja-viaje">
                                   <h2 class="detalleltlt">DETALLES:</h2>
                               
                                   <p class="viajelbl"> FECHA:</p> 
                                   <p class="viajerbr" ReadOnly = true>{{Form::select('id_travel', $viaje, null, ['id'=>'select-fecha'])}} </p> 

                                   <label>
                                          <p class="horariolbl">
                                          HORARIO DISPONIBLE:   </p>                               
                                          <input type=text name="time"  ReadOnly = true id="time-select" value="">
                                          
                                   </label>   
                                   <br>
                                   <label >
                                    <p class="cantilbl">
                                    CANTIDAD DE BOLETOS :
                                    </p>
                                   <input min="0" type=number name="cantidad" id="cant-select"  value="" oninput="calculoTotal()">

                                   </label>
                                   <br>
                                   <p class="lugarlbl">
                                                 ID_LUGAR :</p>

                                                 <input type=text name="id_lugar"  id="lugarrbr" value="{{$lugar->id}}">
                                          <br>

                            </div>
                            <button href="{{route('compra.store')}}" type="submit">Finalizar compra</button>
                                 

                            </section>

                            <section class="recibo">
                            <h2>Recivo:</h2>
                            <div class="caja-recibo">
                                   <h2 class="infotlt">Informacion</h2>

                                   <p class="nomblbl">NOMBRE DEL SITIO TURISTICO: </p><p class="nombrbr">{{$lugar->lugar_turistico}}</p> 

                                   <label class="lblfew">
                                   <p class="fechalbl">
                                   FECHA SELECCIONADA:
                                   </p>
              
                                   <input type=text name="fecha"  ReadOnly = true id="date-select" value="" >

                                   </label>

                                   <h2 class="preciotut">Precio del VIaje</h2>
                                   <br>
                                          <p class="canrlbl">
                                          PRECIO DE VIAJE:
                                          </p>
                                          <input type=text name="price" ReadOnly = true id="price-select"  value="">


                                   <br>

                                          <p class="totallbl">
                                          PRECIO TOTAL:
                                          </p>
                                          <input type=text name="price" ReadOnly = true id="pricee-total"  value="">


                                          <p class="idlbl">
                                                 ID_USUARIO :</p>
                                                 <input type=text name="user"  id="usuariolbl" value="{{auth()->user()->id}}">

                                   
                            </div>

                            </section>

                            <script type="text/javascript">
                                   function calculoTotal(){


                                          try{
                                                 var Numero1=parseInt(document.getElementById("cant-select").value) || 0,
                                                  Numero2=parseFloat(document.getElementById("price-select").value) || 0;

                                                 document.getElementById("pricee-total").value=Numero1 * Numero2;
                                          }catch(e){}
                                   }

                            </script>


                     </form>
              </section>
       
              

              </div>

<script type="text/javascript"  src="{{asset('/js/jQuery.js')}}"></script>
<script type="text/javascript"  src="{{asset('/js/show.js')}}"></script>
</html>

@endsection
