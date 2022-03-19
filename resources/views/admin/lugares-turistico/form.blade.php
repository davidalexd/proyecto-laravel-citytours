<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('lugar_turistico') }}
            {{ Form::text('lugar_turistico', $lugaresTuristico->lugar_turistico, ['class' => 'form-control' . ($errors->has('lugar_turistico') ? ' is-invalid' : ''), 'placeholder' => 'Lugar Turistico']) }}
            {!! $errors->first('lugar_turistico', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('imagen') }}
            {{ Form::file('imagen') }}
            {!! $errors->first('imagen', '<div class="invalid-feedback" style="display:block;">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('id_departamento') }}
            {{ Form::select('id_departamento', $departamento,$lugaresTuristico->id_departamento, ['class' => 'form-control' . ($errors->has('id_departamento') ? ' is-invalid' : '')]) }}
            {!! $errors->first('id_departamento', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>