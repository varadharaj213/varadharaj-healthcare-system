$(document).ready(function() {
	 var ajaxdata = "";
     var value ='county='+ajaxdata;
 
     $.ajax({
     url: "replymsg.jsp",
     //type: "post",
     data: value,
     cache: false,
     success: function(data) {
    
     $("#reply").html(data).slideDown('slow');
     }
     });
});