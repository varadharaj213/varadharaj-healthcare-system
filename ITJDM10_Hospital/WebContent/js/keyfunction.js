function idfunction() {
 
var totalchar="123456789";
   //Random  random=new Random();
    var key="";
   for(var i=1;i<=2;i++){
	   var keygeneration=Math.floor(Math.random()*totalchar.length);
	   key=key+totalchar.charAt(keygeneration);
   }
    	document.getElementById("key1").value=key;
    	
}	