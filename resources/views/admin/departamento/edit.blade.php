@extends('admin.index')

@section('template_title')
    Update Departamento
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">Update Departamento</span>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('departamento.update', $departamento->id) }}"  role="form" enctype="multipart/form-data">
                            {{ method_field('PATCH') }}
                            @csrf

                            @include('admin.departamento.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection