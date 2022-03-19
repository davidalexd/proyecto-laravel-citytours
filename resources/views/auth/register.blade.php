@extends('layouts.app')

@section('content')

<div class="align">

  <div class="grid">

    <form action="{{ route('register') }}" method="POST" class="form login">
    @csrf
    
    <div class="form__field">
        <label for="username"><svg class="icon">
            <use xlink:href="#icon-user"></use>
          </svg><span class="hidden">Nombres</span></label>
        <input autocomplete="username" id="name" type="text" name="username" class="form__input" value="{{ old('username') }}" placeholder="Nombres" required autocomplete="username" autofocus>
    </div>

    <div class="form__field">
        <label for="first_name"><svg class="icon">
            <use xlink:href="#icon-user"></use>
          </svg><span class="hidden">surname</span></label>
        <input autocomplete="first_name" id="first_name" type="text" name="first_name" class="form__input" value="{{ old('first_name') }}" placeholder="Apellido Paterno" required autocomplete="first_name" autofocus>
        
    </div>

      <div class="form__field">
        <label for="last_name"><svg class="icon">
            <use xlink:href="#icon-user"></use>
          </svg><span class="hidden">Email</span></label>
        <input autocomplete="last_name" id="last_name" type="text" name="last_name" class="form__input" value="{{ old('last_name') }}" placeholder="Apellido Materno" required autocomplete="last_name" autofocus>
        
    </div>

      

    <div class="form__field">
        <label for="email"><svg class="icon">
            <use xlink:href="#icon-correo"></use>
          </svg><span class="hidden">Email</span></label>
        <input autocomplete="email" id="email" type="email" name="email" class="form__input " value="{{ old('email') }}" placeholder="Email" required autocomplete="email" autofocus>
        
    </div>

      <div class="form__field">
        <label for="password"><svg class="icon">
            <use xlink:href="#icon-lock"></use>
          </svg><span class="hidden">Contraseña</span></label>
        <input id="password" type="password" name="password" class="form__input" placeholder="Contraseña" required autocomplete="new-password">
       
      </div>

      <div class="form__field">
        <label for="password-confirm"><svg class="icon">
            <use xlink:href="#icon-lock"></use>
          </svg><span class="hidden">Confirma Contraseña</span></label>
        <input id="password-confirm" type="password" name="password_confirmation" class="form__input" placeholder="Confirma Contraseña" required autocomplete="new-password">
        
      </div>
      
      <div class="form__field">
        <label for="phone_number"><svg class="icon">
            <use xlink:href="#icon-cell"></use>
          </svg><span class="hidden">Telefono</span></label>
        <input autocomplete="phone_number" id="phone_number" type="text" name="phone_number" class="form__input" value="{{ old('phone_number') }}" placeholder="Número de celular" required autocomplete="phone_number" autofocus ">
       
      </div>

      <div class="form__field">
        <label for="address"><svg class="icon">
            <use xlink:href="#icon-dir"></use>
          </svg><span class="hidden">Dir</span></label>
        <input autocomplete="address" id="address" type="text" name="address" class="form__input" value="{{ old('address') }}" placeholder="Dirección" required autocomplete="address" autofocus>
      </div>

      <div class="form__field">
        <label for="dni"><svg class="icon">
            <use xlink:href="#icon-dni"></use>
          </svg><span class="hidden">Email</span></label>
        <input autocomplete="dni" id="dni" type="text" name="dni" class="form__input" value="{{ old('dni') }}" placeholder="DNI" required autocomplete="dni" autofocus>
        
      </div>

      <div class="form__field">
        <input type="submit" value="Registrate">
      </div>
      
  </div>
     
    
    </form>

  <svg xmlns="http://www.w3.org/2000/svg" class="icons">
    <symbol id="icon-arrow-right" viewBox="0 0 1792 1792">
      <path d="M1600 960q0 54-37 91l-651 651q-39 37-91 37-51 0-90-37l-75-75q-38-38-38-91t38-91l293-293H245q-52 0-84.5-37.5T128 1024V896q0-53 32.5-90.5T245 768h704L656 474q-38-36-38-90t38-90l75-75q38-38 90-38 53 0 91 38l651 651q37 35 37 90z" />
    </symbol>

    <symbol id="icon-lock" viewBox="0 0 1792 1792">
      <path d="M640 768h512V576q0-106-75-181t-181-75-181 75-75 181v192zm832 96v576q0 40-28 68t-68 28H416q-40 0-68-28t-28-68V864q0-40 28-68t68-28h32V576q0-184 132-316t316-132 316 132 132 316v192h32q40 0 68 28t28 68z" />
    </symbol>


    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-envelope icon" viewBox="0 0 16 16" id="icon-correo">
    <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
    </svg>

    <!-- Icono Celular -->
    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-phone-vibrate icon" viewBox="0 0 16 16" id="icon-cell" class="icons">
    <path d="M3 2a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V2zm6 11a1 1 0 1 0-2 0 1 1 0 0 0 2 0z"/>
    </svg>
    <!-- Icono Celular -->

    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-signpost-fill icon" viewBox="0 0 16 16" id="icon-dir">
    <path d="M7.293.707A1 1 0 0 0 7 1.414V4H2a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h5v6h2v-6h3.532a1 1 0 0 0 .768-.36l1.933-2.32a.5.5 0 0 0 0-.64L13.3 4.36a1 1 0 0 0-.768-.36H9V1.414A1 1 0 0 0 7.293.707z"/>
    </svg>

    <!-- Icono Dni -->
    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-aspect-ratio-fill icon" viewBox="0 0 16 16" id="icon-dni">
    <path d="M0 12.5v-9A1.5 1.5 0 0 1 1.5 2h13A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5zM2.5 4a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 1 0V5h2.5a.5.5 0 0 0 0-1h-3zm11 8a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-1 0V11h-2.5a.5.5 0 0 0 0 1h3z"/>
    </svg>
    <!-- Icono Dni -->
    
    <symbol id="icon-user" viewBox="0 0 1792 1792">
      <path d="M1600 1405q0 120-73 189.5t-194 69.5H459q-121 0-194-69.5T192 1405q0-53 3.5-103.5t14-109T236 1084t43-97.5 62-81 85.5-53.5T538 832q9 0 42 21.5t74.5 48 108 48T896 971t133.5-21.5 108-48 74.5-48 42-21.5q61 0 111.5 20t85.5 53.5 62 81 43 97.5 26.5 108.5 14 109 3.5 103.5zm-320-893q0 159-112.5 271.5T896 896 624.5 783.5 512 512t112.5-271.5T896 128t271.5 112.5T1280 512z" />
    </symbol>
  </svg>

  

</svg>

</div>
@endsection
