function registervalidate()
{
	
	var username=document.getElementById("username").value;	
	var password=document.getElementById("PassWord").value;
	var cpassword=document.getElementById("ConformPassWord").value;
	var key=document.getElementById("key1").value;
	var mail=document.getElementById("mailid").value;
	var refmail=document.getElementById("Ref_Email_id").value;
	var days=document.getElementById("day").selectedIndex;
	var months=document.getElementById("month").selectedIndex;
	var years=document.getElementById("year").selectedIndex;
	var groop=document.getElementById("group").value;
	var contactnumber=document.getElementById("Number").value;
	
	var gender1=document.getElementById("optionsRadios1").checked;
	var gender2=document.getElementById("optionsRadios1").checked;
	var address=document.getElementById("address").value;
	var city=document.getElementById("city").selectedIndex;
	var state=document.getElementById("state").selectedIndex;	


	if(username.length==0)
		{
		alert("pls enter the username");
		document.getElementById("username").focus();
		return false;
		}
	if(password.length==0)
	{
	alert("pls enter the PassWord");
	document.getElementById("PassWord").focus();
	return false;
	}

	if(cpassword.length==0)
	{
	alert("pls enter the cpassword");
	document.getElementById("ConformPassWord").focus();
	return false;
	}
	if(cpassword!=password)
	{
	alert("password is mismatch");
	cpassword="";
	password="";
	document.getElementById("ConformPassWord").focus();
	return false;
	}
	if(mail.length==0)
	{
	alert("pls enter the mail");
	document.getElementById("mailid").focus();
	return false;
	}
	if(refmail.length==0)
	{
	alert("pls enter the refmail");
	document.getElementById("Ref_Email_id").focus();
	return false;
	}
	if(days==0)
	{
	alert("pls select days");

	return false;
	}
	if(months==0)
	{
	alert("pls select months");

	return false;
	}
	if(years==0)
	{
		alert("pls select years");
	return false;
	}
	if(address.length==0)
	{
	alert("pls enter the address");
	document.getElementById("address").focus();
	return false;
	}
	if(city==0)
	{
	alert("pls select city");

	return false;
	}
	if(state==0)
	{
	alert("pls select state");

	return false;
	}

	if(groop.length==0)
	{
	alert("pls enter the groop");
	document.getElementById("group").focus();
	return false;
	}
	
	if (contactnumber.length == 0) {
		alert("please enter contact number");
		document.getElementById("Number").focus;
		return false;

	}
	if (isNaN(contactnumber) ) 
	{

		 alert("please enter numbers only");
		 document.getElementById("Number").focus();
		 return false;  	 
	}
	if (contactnumber.length < 10||	contactnumber.length>10 ) 
	{
		alert("please enter 10 numbers only");
		
		 document.getElementById("Number").focus();
		 return false;  	 
	}
	if(gender1==false && gender2==false)
	{
	alert("pls choose the gender");
	document.getElementById("optionsRadios1").focus();
	return false;
	}
	/*if(document.getElementsByName("optionsRadios[0]").checked==false &&document.getElementsByName("optionsRadios[1]").checked==false) 
	{
		  alert("please radio button is checked");
	}*/

//atLeastOneRadio();




if (!ValidateEmail()) {
	return false;
}
}
function ValidateEmail() {
// alert("");
var emailID = document.frm.mailid;
var Ref_Email_id = document.frm.Ref_Email_id;
var a = emailID.value;
var b = Ref_Email_id.value;
// alert("please enter emailID = "+a);
// alert("please enter remail = "+b);
if ((a.length == 0) && (b.length == 0)) {
	alert("Please Enter your Email Address");
	emailID.focus();
	return false;
} else {
	if ((a.length > 0) && (b.length == 0)) {
		alert("Please Enter your Re_Email Address");
		b.focus();
		return false;
	} else if ((a.length == 0) && (b.length > 0)) {
		 alert("Please Enter your Email Address");
		emailID.focus();
		return false;
	} else {
		var x = a;
		// alert("x value = "+x);
		var atpos = x.indexOf("@");
		var dotpos = x.lastIndexOf(".");
		if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length
				|| x.length == 0) {
			alert("Not a valid e-mail address");
			emailID.focus();
			return false;
		}
	}
	var x1 = b;
	var atpos1 = x.indexOf("@");
	var dotpos1 = x.lastIndexOf(".");
	if (atpos1 < 1 || dotpos1 < atpos1 + 2 || dotpos1 + 2 >= x1.length
			|| x1.length == 0) {
		alert("Not a valid Re-mail address");
		Ref_Email_id.focus();
		return false;
	}
}
return true;
}
