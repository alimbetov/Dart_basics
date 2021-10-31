

class User {
  String email;

User(this.email);
void printEmail(){
  print(email);
}
String get  getUsername {
  return email;
}

 @override
  bool operator ==(other) => other.email == email;
  
 @override
  int get hashCode => email.hashCode;

}

class  AdminUser extends User with emailAfterDog {
  AdminUser(String email) : super(email);
  @override
 void printEmail(){
  print(getMailSystem);
}
}

class  GeneralUser extends User {
  GeneralUser(String email) : super(email);

String get getMailSystem => super.email;

@override
 void printEmail(){
  print(email);
}

}

mixin emailAfterDog on User{
  String get getMailSystem => super.email.substring(super.email.indexOf('@'));
}
class UserManager <T extends User> {
 Map <T,T> identifier = new Map();
 UserManager();


void AddUser(T user){
  identifier[user]=user;
}
void deletUser(T user){
    if(identifier.containsKey(user)){
      identifier.removeWhere((key, value) => key==user);
    }
}

 void printAllUsersMailSystem(){
  for(var item in identifier.values){
    item.printEmail();
  }
}
}