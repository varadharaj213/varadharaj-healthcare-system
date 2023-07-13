function reg()
{

	var name=document.form1.Name.value;
	var password=document.form1.Pass.value;
	var cpass=document.form1.ConformPass.value;
	var mail=document.form1.mail.value;
	var id=document.form1.id.value;
	var atposition=email.indexOf("@");  
	var dotposition=email.lastIndexOf(".");
	
	if(name==null || name=="")
	{
	alert("Name must be filled out.");
	document.form1.Name.focus();
	return false;
	}
	if(password==null||password=="")
	{
	alert("Password must be filled out.");
	document.form1.Pass.focus();
	return false;
	}
	if(cpass==null||cpass=="")
	{
	alert("ConformPassword must be filled out.");
	document.form1.ConformPass.focus();
	return false;
	}
	if(mail==null||mail=="")
	{
	alert("Mail must be filled out.");
	document.form1.mail.focus();
	return false;
	}
	if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length)
    {  
	  alert("Please enter a valid e-mail address.");  
	  document.form1.mail.focus();
	  return false;  
	} 
	if(id==null||id=="")
	{
	alert("ID must be filled out.");
	document.form1.id.focus();
	return false;
	}
	return true;
	}