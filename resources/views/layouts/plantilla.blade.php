<!DOCTYPE html>
<html lang="en" style="scroll-behavior: smooth;">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="{{asset('css/cascada.css')}}">
    <link rel="stylesheet" href="{{asset('css/kokoro.css')}}">

    <!--Diseño de Pagina Compra-->
    <link rel="stylesheet" href="{{asset('css/compra.css')}}">

    <link rel="stylesheet" href="{{asset('css/boleta.css')}}">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet"> 
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">


    <title> @yield('title') </title>






    <!--<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">-->
    <!--favicon -->
    <!--estilos -->
</head>
<body>
    @yield('content')
<!--header -->
<div class="menu">
        <!-- Espacio Logo -->
        <div class="logo-box">
            <a class="logo" href=""><img src="{{ asset('img/logo.png') }}"  alt="Logo-CityTours"></a>
        </div>
        <!-- Espacio menu -->
        <div class="list-container">
            <ul class="list">
                <li class="btn"><a href="{{route('home')}}" class="activo">INICIO</a>
                <li class="btn"><a href="{{route('destinos.index')}}" class="activo">DESTINOS</a>
                    
                </li>
                 @isset(auth()->user()->is_admin)
                 @if (auth()->user()->is_admin)
                 <li class="btn"><a href="{{route('admin.index')}}" class="activo">ADMIN </a></li>
                 @endif
                 @endisset
                <li class="btn"><a href="#Nosotros_id" class="activo">NOSOTROS</a></li>
                
                
                <li class="btn"><a href="{{route('Viewboletas.index')}}" class="activo">BOLETO</a></li>
                <li class="btn"><a href="" class="activo">USER</a>
                    <ul>
                        <!-- Authentication Links -->
                        @guest
                                @if (Route::has('login'))
                                <li class="btn2"><a class="activo" href="{{ route('login') }}"><p>{{ __('Login') }}</p></a></li>
                                @endif

                                @if (Route::has('register'))
                                <li class="btn2"><a class="activo" href="{{ route('register') }}"><p>{{ __('Register') }}</p></a></li>
                                @endif
                                @else
                                <li class="btn2">
                                    <a class="activo">
                                    @auth
                                     <p>{{auth()->user()->username}}</p>
                                     @endauth
                                    </a>
                                </li>
                                <li class="btn2">
                                    <a class="activo" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <p>{{ __('Logout') }}</p>
                                    
                                        </a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="">
                                        @csrf
                                    </form>
                                    
                                </li>
                            </li>
                        @endguest
                    </ul>
                </li>
            </ul>

        </div>
        
    </div>
    
<!--header -->


<!-- Scripts del Pagina Destinos -->



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>    
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Scripts del Pagina Destinos -->


<script src="{{ asset('js/jQuery.js') }}"></script>
<script src="{{ asset('js/mian.js') }}"></script>
<script src="{{ asset('js/app.js') }}" defer></script>
<div class="loading"><img src="https://datoweb.com/img/post/3_21_gear-datoweb.gif"></div>
<style>
    .loading {
		position: fixed;
		z-index: 999;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: #eee;
	}
	.loading img {
		position: fixed;
		top: 50%;
		right: 50%;
		bottom: 50%;
		left: 50%;
		margin-left: -41px;
		margin-top: -41px;
	}
</style>
<script>
    $(document).ready(function(){
		$('.loading').fadeOut(200);
	});
</script>
<!--nav  -->
@yield('footer')

<footer id="Nosotros_id"class="footer" id="contac">
    <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M-2.82,119.89 C60.38,187.98 370.77,22.20 500.56,127.78 L500.00,0.00 L0.00,0.00 Z" style="stroke: none; fill: #dedede;"></path></svg>
    </div>
    <div class="container-footer-all">
        <div class="container-body">
          <div class="colum1">
            
        </div>
            <div class="colum2">
                <h3>Redes sociales</h3>

                <div class="row">
                    <a href="" target="_blank" ><img src="/img/facebook.png" alt=""></a>
                    <label for="">Siguenos en Facebook</label>
                </div>
                <div class="row">
                    <a href="" target="_blank"><img src="img/twitter.png" alt=""></a>
                    <label for="">Siguenos en Twitter</label>
                </div>

                <div class="row">
                    <a href="" target="_blank"><img src="img/linkedin.png" alt=""></a>
                    <label for="">Siguenos en Linkedin</label>
                </div>
            </div>
            <div class="colum3">
                <h3>Información Contactos</h3>
               
                
                <div class="row2">
                    <img src="img/telefono.png" alt="" class="Telefono">
                    <label for=""></label>
                </div>

                
                <div class="row2">
                    <img src="img/celular.png" alt="" class="Smartphone">
                    <label for=""></label>
                </div>

                <div class="row2">
                    <img src="img/mensaje.png" alt="" class="Correo">
                    <label for=""></label>
                </div>
            </div>
        </div>

</div>
<div class="container-footer">
    <div class="container-f">
        <div class="copyright">
            © Todos los Derechos Reservados |<a href="">CityTours</a>
        </div>

        <div class="information">
        <a href=""> Información de Empresa</a> | <a href="">Privación y Politica</a> | <a href="">Terminos y Condiciones</a>
        </div>
    </div>    
</div>
</footer>
</body>
</html>