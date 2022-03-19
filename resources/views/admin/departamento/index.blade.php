@extends('admin.index')

@section('template_title')
    Departamento
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Departamento') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('departamento.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Create New') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>
                                        
										<th>Departamento</th>
										<th>Imagen</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($departamentos as $departamento)
                                        <tr>
                                            <td>{{ ++$i }}</td>
                                            
											<td>{{ $departamento->departamento }}</td>
											<td>
                                                <img src="{{ asset('storage/img/'.$departamento->imagen) }}" height="80" alt="">
                                            </td>
                                            <td>
                                                <form action="{{ route('departamento.destroy',$departamento->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('departamento.show',$departamento->id) }}"><i class="fa fa-fw fa-eye"></i> Show</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('departamento.edit',$departamento->id) }}"><i class="fa fa-fw fa-edit"></i> Edit</a>
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
                {!! $departamentos->links() !!}
            </div>
        </div>
    </div>
@endsection
