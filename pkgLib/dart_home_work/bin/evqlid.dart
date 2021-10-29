
class Geometry{
 static int gcd (int n, int m) {
    if (m > n) {
      if ((m % n) == 0){
	                   return n;}
      else{
		  return gcd(n, m % n);
		  }
    }
    else {
        if ((n % m) == 0)  {
			return m;}
          else{
			  return gcd(m, n % m);}
    }
}
static int lcm(int a, int b) {
 var result = a / gcd(a, b) * b;
    return result.toInt();   
}


}