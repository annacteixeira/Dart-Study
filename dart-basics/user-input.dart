import 'dart:io';
void main() {
  print("Enter your name: ");

  var name = stdin.readLineSync(); // only accepts strings

  print("Your name is $name");

}