void main() {
  myFunction() {
    return "\nHello Functions!";
  }

  print(myFunction());

  var text = myFunction();
  print(text);

  callName(String name) {
    print("\nHello $name");
  }

  callName("Anna");

  // Optional positional parameters:

  callTwoNames(String name1, [name2]) {
    return "\nHello $name1 and $name2";
  }

  print(callTwoNames("John"));

  // Calling with named parameters:

  callNames(String name1, {name2}) {
    return "\nHello $name1 and $name2";
  }

  print(callNames("Bob", name2:"Bill"));
  print(callNames("Bob")); // prints Bob and null

  // Adding a default value

  callDefaultName(String name1, {String name2 = "friends"}) {
    return "\nHello $name1 and $name2";
  }

  print(callDefaultName("Bob"));
  print(callDefaultName("Bob", name2:"Bill"));

}