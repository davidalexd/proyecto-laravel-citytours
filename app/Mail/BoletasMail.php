<?php

namespace App\Mail;

use App\Http\Controllers\compraController;
use App\Models\Boleta;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use SplSubject;

class BoletasMail extends Mailable
{
    use Queueable, SerializesModels;
    public $subject ='verificacion boleta';
private  $id;

    /**
     * @return void
     */
    public function __construct($parametro)
    {
        $this->id=$parametro;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $shares = Boleta::join('viajes', 'viajes.id', '=', 'boletas.id_travel')
       ->join('lugares_turisticos', 'lugares_turisticos.id', '=', 'viajes.id_lugar')
       ->join('departamentos', 'departamentos.id', '=', 'lugares_turisticos.id_departamento')
       ->select('departamentos.departamento','viajes.price','viajes.date','viajes.time','lugares_turisticos.lugar_turistico',
       'boletas.quantity','viajes.discount','boletas.subtotal','boletas.total')
       ->where('boletas.id_user', '=',$this->id)
       ->get();
   
         $ultima=$shares->last();
       //return  view('boleta.show',compact('ultima'));

    
        return $this->view('boleta.show',compact('ultima'))
        ->from(env('MAIL_FROM_ADDRESS'));
    }

}
