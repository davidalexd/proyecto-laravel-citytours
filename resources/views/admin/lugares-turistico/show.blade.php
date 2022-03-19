@extends('admin.index')

@section('template_title')
    {{ $lugaresTuristico->name ?? 'Show Lugares Turistico' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Lugares Turistico</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('lugares.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Lugar Turistico:</strong>
                            {{ $lugaresTuristico->lugar_turistico }}
                        </div>
                        <div class="form-group">
                            <strong>Imagen:</strong>
                            {{ $lugaresTuristico->imagen }}
                        </div>
                        <div class="form-group">
                            <strong>Id Departamento:</strong>
                            {{ $lugaresTuristico->id_departamento }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
