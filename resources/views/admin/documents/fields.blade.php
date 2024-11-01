<div class="col-sm-12">
    <div class="form-group col-sm-8">
        {!! Form::label('number', 'Номер указа:') !!}
        {!! Form::text('number', null, ['class' => 'form-control']) !!}
        {!! Form::label('number', null, ['class' => 'h6 label-error']) !!}
    </div>
    <div class="form-group col-sm-8">
        {!! Form::label('name', 'Название:') !!}
        {!! Form::text('name', null, ['class' => 'form-control']) !!}
        {!! Form::label('name', null, ['class' => 'h6 label-error']) !!}
    </div>
    
    <div class="form-group col-sm-4">
        {!! Form::label('published_at', 'Дата начала публикации:') !!}
        {!! Form::text('published_at', null, ['class' => 'form-control','maxlength' => 150]) !!}
        {!! Form::label('published_at', null, ['class' => 'h6 label-error']) !!}
    </div>
</div>
<div class="col-sm-12">
    <div class="form-group col-sm-12">
        {!! Form::label('url', 'ссылка:') !!}
        {!! Form::text('url', null, ['class' => 'form-control','maxlength' => 150]) !!}
        {!! Form::label('url', null, ['class' => 'h6 label-error']) !!}
    </div>
</div>
<div class="col-sm-12">
    <div class="form-group col-sm-12">
        @if(isset($dictionary) && $dictionary)
            <a href="{{$dictionary->getFileUrl('file')}}" class="pull-left img-responsive" style="max-width: 200px">{{$dictionary->getFileUrl('file')}}</a>
        @endif
    </div>
    <div class="form-group col-md-12">
        {!! Form::label('file', 'Загрузить файл:') !!}
        {!! Form::file('file', null, ['class' => 'form-control','maxlength' => 100]) !!}
        {!! Form::label('file', null, ['class' => 'h6 label-error']) !!}
    </div>
</div>
<script>
    $('#published_at').datetimepicker({
        format: 'Y-MM-DD',
        useCurrent: false,
    });
</script>
