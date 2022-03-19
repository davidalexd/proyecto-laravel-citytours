@extends('admin.index')

@section('template_title')
    Lugares Turistico
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Lugares Turistico') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('lugares.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Create New') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @elseif(($message = Session::get('error')))
                        <div class="alert alert-danger">
                            <p>{{ $message }}</p>
                        </div>
                    @endif
                    

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>
                                        
										<th>Lugar Turistico</th>
										<th>Imagen</th>
										<th>Id Departamento</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($lugaresTuristicos as $lugaresTuristico)
                                        <tr>
                                            <td>{{ ++$i }}</td>
                                            
											<td>{{ $lugaresTuristico->lugar_turistico }}</td>
											<td>
                                                <img src="{{ asset('storage/img/'.$lugaresTuristico->imagen) }}" height="80" alt="">
                                            </td>
											<td>{{ $lugaresTuristico->departamento }}</td>

                                            <td>
                                                <form action="{{ route('lugares.destroy',$lugaresTuristico->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('lugares.show',$lugaresTuristico->id) }}"><i class="fa fa-fw fa-eye"></i> Show</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('lugares.edit',$lugaresTuristico->id) }}"><i class="fa fa-fw fa-edit"></i> Edit</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $lugaresTuristicos->links() !!}
            </div>
        </div>
    </div>
@endsection
