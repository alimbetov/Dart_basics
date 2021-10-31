import 'my_math.dart';
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

class Point {
  final double x;
  final double y;
  final double z;

Point(this.x,this.y,this.z);

Point.Zero():x=0.0,y=0.0,z=0.0;

Point.One():x=1,y=1,z=1;

factory Point.X(){
  return Point(1,2,3);
}


 @override
  String toString(){
    return 'coordinates:  x='+x.toString()+';y='+y.toString()+';z='+z.toString();
}

  double d2DistanceTo (Point another){
  var result=my_math.doubleToDegree((x-another.x ), 2)
   + my_math.doubleToDegree((y-another.y ), 2) ;
  return  my_math.sqrt(result, 2);
  }

  double d3DistanceTo (Point another){
  var result=my_math.doubleToDegree((x-another.x ), 2)
   + my_math.doubleToDegree((y-another.y ), 2) 
   + my_math.doubleToDegree((z-another.z ), 2) ;
  return  my_math.sqrt(result, 2);
  }

 

}