
$(function(){
    $('#select-fecha').on('change',onselectionchange);
});

jQuery(document).ready(function($) {
    
    //var viaje_id = $(this).val();
    $.getJSON('/api/data/'+$('#select-fecha').val()+'', function (data) {
        html_date =data.date;
        html_time =data.time
        html_price =data.price;
        
        $('#date-select').val(html_date);
        $('#time-select').val(html_time);
        $('#price-select').val(html_price);
        
        
        
        //console.log(data.time);

    });
    //code...
});
function onselectionchange(id){
    
    var viaje_id = $(this).val();
    $.getJSON('/api/data/'+viaje_id+'', function (data) {
        html_date =data.date;
        html_time =data.time
        html_price =data.price;
    
        $('#date-select').val(html_date);
        $('#time-select').val(html_time);
        $('#price-select').val(html_price);
        
        

        console.log(data.time);

    });

}

