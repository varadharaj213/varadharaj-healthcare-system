$(document).ready(function() {
	$('#ifYes').hide();
	$('#no').hide();
	$('#amount').hide();
	$('input:radio').click(function() {
		var v=$(this).val();
		alert(v);
		if(v=='yes'){
			$('#ifYes').show();
			$('#no').show();
			$('#amount').show();

		}else if (v=='Cash') {
			$('#ifYes').hide();
			$('#no').hide();
			$('#amount').show();
		}
	});
});