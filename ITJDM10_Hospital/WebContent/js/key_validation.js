
function  demo()
{
	var element=document.getElementById("p1");
	element.innerHTML="";
 var e=document.createElement("input");
 e.setAttribute("type", "text");
 e.setAttribute("name", "card");
 e.setAttribute("placeholder","Branch Name..:");
 e.setAttribute("id","values");
 element.appendChild(e);
 
 var elements=document.getElementById("p2");
	elements.innerHTML="";
	
var e1=document.createElement("input");
e1.setAttribute("type", "text");
e1.setAttribute("name", "card");
e1.setAttribute("placeholder","CreditCard No..:");
e1.setAttribute("id","values");
elements.appendChild(e1);


var elements=document.getElementById("p3");
elements.innerHTML="";
var e2=document.createElement("input");
e2.setAttribute("type", "text");
e2.setAttribute("name", "card");
e2.setAttribute("placeholder","Amount..:");
e2.setAttribute("id","values");
elements.appendChild(e2);

}
function demo1()
{
	var element=document.getElementById("p4");
	element.innerHTML="";
 var e3=document.createElement("input");
 e3.setAttribute("type", "text");
 e3.setAttribute("name", "card");
 e3.setAttribute("placeholder","Amount..:");
 e3.setAttribute("id","values");
 element.appendChild(e3);
	}