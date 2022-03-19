@extends('admin.index')

@section('template_title')
    {{ $tour->name ?? 'Show Tour' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Tour</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('tour.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Tour:</strong>
                            {{ $tour->tour }}
                        </div>
                        <div class="form-group">
                            <strong>Details:</strong>
                            {{ $tour->details }}
                        </div>
                        <div class="form-group">
                            <strong>Imagen:</strong>
                            {{ $tour->imagen }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
