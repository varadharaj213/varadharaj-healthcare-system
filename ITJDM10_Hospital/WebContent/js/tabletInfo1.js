$(document).ready(function() {
	$('#query1').keyup(function() {
	 var ajaxdata = $('#query1').val();
     var value ='Drugname='+ajaxdata;
 
     $.ajax({
     url: "AdminDelete",
     type: "post",
     data: value,
     cache: false,
     success: function(data) {
    //alert(data);
     $("#msg").html(data).slideDown('slow',232323);
     }
     });
});
	
$('#submit').click(function(e) {
		 e.preventDefault();
		 var ajaxdata = $('#query1').val();
	     var value ='Drugname='+ajaxdata;
	 
	     $.ajax({
	     url: "AdminDelete",
	     type: "post",
	     data: value,
	     cache: false,
	     success: function(data) {
	    //alert(data);
	     $("#msg").html(data).slideDown('slow',232323);
	     }
	     });
	});	
});
