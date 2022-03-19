<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('tour') }}
            {{ Form::text('tour', $tour->tour, ['class' => 'form-control' . ($errors->has('tour') ? ' is-invalid' : ''), 'placeholder' => 'Tour']) }}
            {!! $errors->first('tour', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('details') }}
            {{ Form::text('details', $tour->details, ['class' => 'form-control' . ($errors->has('details') ? ' is-invalid' : ''), 'placeholder' => 'Details']) }}
            {!! $errors->first('details', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('imagen') }}
            {{ Form::file('imagen') }}
            {!! $errors->first('imagen', '<div class="invalid-feedback" style="display:block">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('id_lugar_turistico') }}
            {{ Form::select('id_lugar_turistico', $lugares,$tour->id_lugar_turistico, ['class' => 'form-control' . ($errors->has('id_lugar_turistico') ? ' is-invalid' : '')]) }}
            {!! $errors->first('id_lugar_turistico', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>