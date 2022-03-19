<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('time') }}
            {{ Form::time('time', $viaje->time, ['class' => 'form-control' . ($errors->has('time') ? ' is-invalid' : ''), 'placeholder' => 'Time']) }}
            {!! $errors->first('time', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('date') }}
            {{ Form::date('date', $viaje->date, ['class' => 'form-control' . ($errors->has('date') ? ' is-invalid' : ''), 'placeholder' => 'Date']) }}
            {!! $errors->first('date', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('tickets') }}
            {{ Form::number('tickets', $viaje->tickets, ['class' => 'form-control' . ($errors->has('tickets') ? ' is-invalid' : ''), 'placeholder' => 'Tickets']) }}
            {!! $errors->first('tickets', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('price') }}
            {{ Form::number('price', $viaje->price, ['class' => 'form-control' . ($errors->has('price') ? ' is-invalid' : ''), 'placeholder' => 'Price']) }}
            {!! $errors->first('price', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('discount') }}
            {{ Form::number('discount', $viaje->discount, ['class' => 'form-control' . ($errors->has('discount') ? ' is-invalid' : ''), 'placeholder' => 'Discount']) }}
            {!! $errors->first('discount', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('id_lugar') }}
            {{ Form::select('id_lugar', $lugares,$viaje->id_lugar, ['class' => 'form-control' . ($errors->has('id_lugar') ? ' is-invalid' : '')]) }}
            {!! $errors->first('id_lugar', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</div>