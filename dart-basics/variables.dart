// dart uses the conventios of C
void main() {

  // Strings
  var name1 = "John Doe";
  String name2 = "John Doe";

  // Integers
  var x = 41;
  int y = 41;

  print(name1);
  print(name2);
  print(x);
  print(y);

  // Dynamic 
  dynamic firstName = "Anna";
  print(firstName);

  // Constants
  const pi = 3.14;
  const String fullName = "Anna Chandra";

  // Final
  final String nickname = "Anninha";

  print(pi);
  print(fullName);
  print(nickname);

  // Declaring and not using
  var myName;
  print(myName); // prints null

  myName = "Anna";
  print(myName);
  

}