$(document).ready(function() {
	$('#query').keyup(function() {
	 var ajaxdata = $('#query').val();
     var value ='query='+ajaxdata;
 
     $.ajax({
     url: "Relaventdisease",
     type: "post",
     data: value,
     cache: false,
     success: function(data) {
    //alert(data);
     $("#Diseasemsg").html(data).slideDown('slow',232323);
     }
     });
});
$('#submit').click(function(e) {
		 e.preventDefault();
		 var ajaxdata = $('#query').val();
	     var value ='query='+ajaxdata;
	 
	     $.ajax({
	     url: "Relaventdisease",
	     type: "post",
	     data: value,
	     cache: false,
	     success: function(data) {
	    //alert(data);
	     $("#Diseasemsg").html(data).slideDown('slow',232323);
	     }
	     });
	});	
});