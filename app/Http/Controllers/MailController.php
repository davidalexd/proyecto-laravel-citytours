<?php

namespace App\Http\Controllers;

use App\Mail\BoletasMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    //
    public function index($ultima){
        $correo=Auth::user()->email;
        Mail::to($correo)->send(new BoletasMail($ultima));
        return redirect()->route('Viewboletas.index');
    }
}
