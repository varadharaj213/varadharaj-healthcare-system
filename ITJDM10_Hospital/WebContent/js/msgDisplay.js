function msg()
{
	var message=document.myform.reply.value;
	alert(message);
	document.getElementById('result').innerHTML=message;  
	}