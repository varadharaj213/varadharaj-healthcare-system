function loginvalidate()
{
	alert("its here");
	
	var patientname=document.getElementById("Patient").value;	
	var password=document.getElementById("PassWord").value;
	var pid=document.getElementById("PatientID").value;
	
	
	
	if(patientname.length==0)
	{
	alert("pls enter the patientname");
	document.getElementById("Patient").focus();
	return false;
	}
/*if(password.length==0)
{
alert("pls enter the password");
document.getElementById("PassWord").focus();
return false;
}

if(pid.length==0)
{
alert("pls enter the pid");
document.getElementById("PatientID").focus();
return false;
}*/
	
	
	
}
