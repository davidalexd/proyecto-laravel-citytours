<link rel="stylesheet" href="{{asset('css/boleta.css')}}">
<div class="contenedor-name">
<h1>Boletos de {{ Auth::user()->username }} {{ Auth::user()->first_name }} {{ Auth::user()->last_name }} </h1>
</div>

<div class="container-bol" >
    <div class="contianer-box"><img src="{{ asset('img/port.png') }}"  alt="Logo-CityTours"></div>

    <div >
    <table class="table-bol" >
        <tbody>
            <tr>
                    <th scope="col" style="height: 35px; "></th>  
                    <td></td>
                    <th scope="col" style="height: 35px"></th>    
                    <td></td>
                    <th scope="col" style="height: 35px"></th>   
                    <td></td>
                    <th scope="col" style=" width: 79px; margin-left:70px;
                    position: absolute;
                    height: 84px;">Total</th>  
                <tr><td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td style="margin-left:45px; width: 79px;
                    position: absolute;
                    height: 84px; text-align:center; font-size:45px;">  {{ $ultima->total }}</td>
                </tr>
            </tr>
        
            <tr>
                <th scope="col" >Departamento:  </th> 
                <td>  {{ $ultima->departamento }}</td> 
                <th scope="col" >Lugar Turístico:  </th>
                <td>  {{ $ultima->lugar_turistico }}</td>
            </tr>
            <tr>
                <th scope="col" style="height: 25px;"></th>  
                <td></td>
                <th scope="col" ></th>  
                <td></td>
            </tr>
            <tr>
                <th scope="col" >Fecha de vuelo:</th>
                <td>  {{ $ultima->date }}</td>
                <th scope="col" >Hora de vuelo:</th>
                <td>  {{ $ultima->time }}</td>
            </tr>
            <tr>
                <th scope="col" ></th>  
                <td></td>
                <th scope="col" ></th>  
                <td></td>
                <th scope="col" >Sub-Total:</th>  
                <td>  {{ $ultima->subtotal }}</td>
            </tr>
            <tr>
                <th scope="col" >Precio de asiento: &nbsp&nbsp&nbsp&nbsp</th>
                <td>  {{ $ultima->price }}</td>
                <th scope="col" >Cantidad de acientos: &nbsp&nbsp&nbsp&nbsp </th>  
                <td>  {{ $ultima->quantity }}</td>
                <th scope="col" >Descuento:</th>  
                <td>  {{ $ultima->discount }}</td>
            </tr>
        </tbody>
    </table>
</div>
</div>
<div style="height: 45px;"></div>