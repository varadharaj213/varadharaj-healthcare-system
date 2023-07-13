function keyfunctionuser(){
 alert("hhklhh");
var totalchar="123456789";
   Random  random=new Random();
    var key1="";
   for(var i=1;i<=4;i++){
	   var keygeneration=Math.floor(Math.random()*totalchar.length);
	   key1=key1+totalchar.charAt(keygeneration);
   }
    	document.getElementById("key2").value=key1;  	
};