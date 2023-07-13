$(document).ready(function() {
	$('#query').keyup(function() {
	 var ajaxdata = $('#query').val();
     var value ='query='+ajaxdata;
 
     $.ajax({
     url: "Perfamence",
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
		 var ajaxdata = $('#query').val();
	     var value ='query='+ajaxdata;
	 
	     $.ajax({
	     url: "Perfamence",
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
