import 'evqlid.dart';
import 'my_math.dart';
import 'string_utils.dart';
import 'user_data.dart';

void main(List<String> arguments) {
  //Task 01
  //Реализуйте методы вычисления НОД и НОК целых чисел. 
  //Реализуйте метод, который разбивает число на простые множители и возвращает их.
print('Task01:');
  //НОД -наибольший общий делитель
 print('НОД='+ Geometry.gcd(15, 20).toString());

 //НоК - Наименьшее общее кратное 
 print('НоК='+Geometry.lcm(15, 20).toString());

 //Task 02
/*Реализуйте методы для преобразования целых чисел
 из десятичной системы в двоичную и обратно*/
print('Task02:');
print('29(10) -> '+ my_math.to_dvoich(29).toString()+'(2)');

print('11101(2) -> '+ my_math.to_dec(11101).toString()+'(10)');


//Task 03
/*Реализуйте метод, который принимает строку слов, разделённых пробелами.
 Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.*/
print('Task03:'); 
var text='Мама1 2мыла раму 243раза';
print(text);
print('search for numbers:'+ Utils.getNumList(text).toString());

//Task 04
/*Есть коллекция слов. Реализуйте метод, возвращающий Map.
 Данный Map должен соотносить слово и количество его вхождений в данную коллекцию. */
print('Task04:'); 
text='раз два три раз два три больше не шуми';
print(text);
print('word frequency='+Utils.getwordsCount(text).toString());

//Task05
/* Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
 Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
  Однако цифры встречаются в виде английских слов от zero до nine. 
  Например, в результате строки ‘one, two, zero, zero’ 
  мы получим следующий результат: [1, 2, 0]. 
  Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их. */
print('Task05:');   
text='one, two, three, cat, dog';
print(text);
print('Convert numbers of word to number='+Utils.getDigitwords('one, two, three, cat, dog').toString());



//Task 06
/* Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
 У данного класса реализуйте метод distanceTo(Point another), 
 который возвращает расстояние от данной точки до точки в параметре.
  По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве 
  и возвращающий площадь треугольника, который образуют данные точки.
   Реализуйте factory-конструкторы для данного класса, возвращающие начало координат,
    и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1],
     которая определяет единичный вектор). */
print('Task06:');      
var point01 = Point(3,3,3);
var point02 = Point(2,2,2);
print('point01='+ point01.toString() + ';'+'point02='+ point02.toString() + ';');
print('2D Distance to Point is '+point01.d2DistanceTo(point02).toString());
print('3D Distance to Point is '+point01.d3DistanceTo(point02).toString());

//Task07
/** Реализуйте метод, который вычисляет корень любой заданной степени из числа. 
 * Реализуйте данный метод как extension-метод для num. 
 * Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
 *  Запрещается использовать методы math.
 *  В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки. */
print('Task07:');  
print(my_math.sqrt(8,2).toString());

//Task08
/* Создайте класс User, у которого есть поле email.
 Реализуйте два наследника данного класса AdminUser и GeneralUser.
  Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email,
   которое находится после @. 
   Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. 
   
   Используйте данный миксин на AdminUser. 
   Далее реализуйте класс UserManager<T extends User>, у которого будет храниться список пользователей 
   и будут методы добавления или удаления их.
    Также в UserManager реализуйте метод, 
    который выведет почту всех пользователей, однако если пользователь admin,
     будет выведено значение после @. Проверьте реализованные методы на практике */
print('Task08:'); 
var uManager=UserManager();
uManager.AddUser(AdminUser('Roma@mail.ru'));
uManager.AddUser(GeneralUser('Nataly@mail.ru'));
uManager.AddUser(AdminUser('Olga@mail.ru'));
uManager.AddUser(GeneralUser('Ruslan@mail.ru'));
uManager.AddUser(GeneralUser('Ruslan@mail.ru'));/**+ double user */

uManager.deletUser(GeneralUser('Ruslan@mail.ru'));
uManager.printAllUsersMailSystem();

}
