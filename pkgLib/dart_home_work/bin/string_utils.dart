class Utils {
  /*Реализуйте метод, который принимает строку слов,
   разделённых пробелами. 
   Задача — найти в данной строке числа и вернуть коллекцию num этих чисел. */
 static List<dynamic> getNumList(String inwords){
  var numblist = new List(); 
  var list= inwords.split(' ');
          if (list.isNotEmpty){
            for (final element in list) {
                    if (int.tryParse( element.replaceAll(new RegExp(r'[^0-9]'),''))!=null){
                    numblist.add(int.tryParse( element.replaceAll(new RegExp(r'[^0-9]'),'')));
                    }
            }
        }
  return numblist;
  }

   static Map getwordsCount(String inwords){
  var wlist = new Map(); 
  var list= inwords.split(' ');
          if (list.isNotEmpty){
            for (final element in list) {
              if(element.isNotEmpty){
            int frequency = wlist[element.toString()] ;  
            frequency ??= 0;
            frequency++;
            if (frequency==1){
               wlist[element.toString()] = frequency; 
            } else {
           wlist.update(
             element.toString(), (value) => frequency);
              }
            }
        }
          }
  return wlist;
  }

static Set getDigitwords(String inwords){
  var wlist = new Map(); 
wlist['zero'] = 0; 
wlist['one'] = 1; 
wlist['two'] = 2; 
wlist['three'] = 3; 
wlist['four'] = 4; 
wlist['five'] = 5; 
wlist['six'] = 6; 
wlist['seven'] = 7; 
wlist['eight'] = 8; 
wlist['nine'] = 9; 

wlist['zero,'] = 0; 
wlist['one,'] = 1; 
wlist['two,'] = 2; 
wlist['three,'] = 3; 
wlist['four,'] = 4; 
wlist['five,'] = 5; 
wlist['six,'] = 6; 
wlist['seven,'] = 7; 
wlist['eight,'] = 8; 
wlist['nine,'] = 9;
  var myDigitSet = new Set();
  var list= inwords.split(' ');
          if (list.isNotEmpty){
            for (final element in list) {
                if(element.isNotEmpty){
                if( wlist.containsKey(element.toLowerCase())) {
                myDigitSet.add(wlist[element.toLowerCase()]);
                }
                }
            }
        }    
  return myDigitSet;
  }


}





