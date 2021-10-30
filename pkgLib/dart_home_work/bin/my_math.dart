class my_math{

 static int nStepen(int value, int stepen){
  var result = value; 
   if (stepen==0
   ){ return 1;}
   else{
   for( var i = 1 ; i < stepen; i++ ) { 
      result *=value ; 
   } 
     return result;
   }
 }



 static int to_dvoich(int value){
var  result=0;
var m=0;
var box=2;
var lastIndex=0;
var lst = new List(); 
var x='';
for (var i=0; value>m;i++){
    m=nStepen(2,i)  ;
    if (value>=m){
  lastIndex=i;
  lst.add(m);
    } 
}
   box=value;
for(var i=lastIndex; i>=0 ;i--){
      if ((box-lst[i]) >= 0){
        box=box-lst[i];
        x+='1';}
        else {
        x+='0';
        }
}
  result= int.tryParse(x);
  return result;
 }

static int to_dec(int value){
  var s = value.toString();
  int result=0;
for(int i=0; i<s.length; i++) {
result+= int.parse(s[i]) * nStepen(2,(s.length-i-1));
}
return result;
}

}