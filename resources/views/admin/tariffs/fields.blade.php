<style>
/* #myDIV {
  
  display: none;
  
} */
#myDIVnone {
  
  display: none;
  
}
.modal-body {
    max-height: calc(100vh - 250px);
    overflow-y: auto;
}
</style>

<div class="col-sm-12">
<h2>Этаж 1:</h2>
        <hr>
    <div class="form-group col-sm-10">
        
        {!! Form::label('address', 'Адресс:') !!}
        {!! Form::text('address', null, ['class' => 'form-control']) !!}
        {!! Form::label('address', null, ['class' => 'h6 label-error']) !!}
    </div>
    
    <div class="form-group col-sm-2">
    
        {!! Form::label('floats', 'Этажей:') !!}<br>
        {!! Form::checkbox('floats', '1', false,['onclick'=> 'showSelectedValue()'],['value'=> '1']); !!}
        <div class="myDIVnone" id="myDIVnone">
        {!! Form::select("floats", array("І поверх" => "1", "І поверх" => "1")); !!}
        </div>
        {!! Form::label('floats','2 и больше ') !!}

    </div>
</div>
<div class="col-sm-12">
    <div class="form-group col-sm-6">
        {!! Form::label('calories', 'Управління будинком,грн/м²:') !!}
        {!! Form::text('calories', null, ['class' => 'form-control','maxlength' => 150]) !!}
        {!! Form::label('calories', null, ['class' => 'h6 label-error']) !!}
    </div>

    <div class="form-group col-sm-6">
        {!! Form::label('money', 'Комунальна електроенергія,грн/м²:') !!}
        {!! Form::text('money', null, ['class' => 'form-control','maxlength' => 150]) !!}
        {!! Form::label('money', null, ['class' => 'h6 label-error']) !!}
    </div>
    <div class="form-group col-sm-6">
        {!! Form::label('service', 'Обслуговування ліфтів,грн/м²:') !!}
        {!! Form::text('service', null, ['class' => 'form-control']) !!}
        {!! Form::label('service', null, ['class' => 'h6 label-error']) !!}
    </div>
    <div class="form-group col-sm-6">
        {!! Form::label('reward', 'Винагорода управителю,грн./м²:') !!}
        {!! Form::text('reward', null, ['class' => 'form-control']) !!}
        {!! Form::label('reward', null, ['class' => 'h6 label-error']) !!}
    </div>
    <div class="form-group col-sm-6">
        {!! Form::label('settlement', 'Середній розрахунковий,грн./м²:') !!}
        {!! Form::text('settlement', null, ['class' => 'form-control']) !!}
        {!! Form::label('settlement', null, ['class' => 'h6 label-error']) !!}
    </div>
    <div class="form-group col-sm-6">
        {!! Form::label('published_at', 'Дата начала публикации:') !!}
        {!! Form::text('published_at', null, ['class' => 'form-control','maxlength' => 150]) !!}
        {!! Form::label('published_at', null, ['class' => 'h6 label-error']) !!}
    </div>
    
</div>

<!-- второй и больше Этаж -->
<div id="myDIV" class="myDIV">

</div>




<script>
$(document).ready(function() {
 
 $("#floats").change(function() {
  
     if(this.checked) {
  
        $("#myDIV").show();
        var structure = $('<div id="myDIV2"><div class="col-sm-10"><h2>Этаж 2 и выше:</h2><hr></div><div class="col-sm-12"><div class="col-sm-10 myDIVnone"style="display: none;">{!! Form::select("floats2", array("ІІ поверх та вище" => "2", "ІІ поверх та вище" => "2й и выше")); !!}</div><div class="form-group col-sm-6">{!! Form::label("calories2", "Управління будинком,грн/м²:") !!}{!! Form::text("calories2", null, ["class" => "form-control","maxlength" => 150]) !!}{!! Form::label("calories2", null, ["class" => "h6 label-error"]) !!}</div><div class="form-group col-sm-6">{!! Form::label("money2", "Комунальна електроенергія,грн/м²:") !!}{!! Form::text("money2", null, ["class" => "form-control","maxlength" => 150]) !!}{!! Form::label("money2", null, ["class" => "h6 label-error"]) !!}</div><div class="form-group col-sm-6">{!! Form::label("service2", "Обслуговування ліфтів,грн/м²:") !!}{!! Form::text("service2", null, ["class" => "form-control"]) !!}{!! Form::label("service2", null, ["class" => "h6 label-error"]) !!}</div><div class="form-group col-sm-6">{!! Form::label("reward2", "Винагорода управителю,грн./м²:") !!}{!! Form::text("reward2", null, ["class" => "form-control"]) !!}{!! Form::label("reward2", null, ["class" => "h6 label-error"]) !!}</div><div class="form-group col-sm-6">{!! Form::label("settlement2", "Середній розрахунковий,грн./м²:") !!}{!! Form::text("settlement2", null, ["class" => "form-control"]) !!}{!! Form::label("settlement2", null, ["class" => "h6 label-error"]) !!}</div></div></div>');
    $('#myDIV').append(structure);  
     }
  
     else
  
     {        
        $("#myDIV").hide();
        var myobj = document.getElementById("myDIV2");
        myobj.remove();  
     }
  
 })
  
 });
function showSelectedValue() {
  var x = document.getElementById("myDIV");
  if (window.getComputedStyle(x).display === "none") {
    x.style.display = "block";
    
  }
}
</script>





    
        
        
        
    


<script>
    $('#published_at').datetimepicker({
        format: 'Y-MM-DD',
        useCurrent: false,
    });



</script>
