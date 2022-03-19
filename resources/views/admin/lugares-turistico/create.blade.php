@extends('admin.index')

@section('template_title')
    Create Lugares Turistico
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">Create Lugares Turistico</span>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('lugares.store') }}"  role="form" enctype="multipart/form-data">
                            @csrf

                            @include('admin.lugares-turistico.form')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
