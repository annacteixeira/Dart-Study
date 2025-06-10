void main() {
  // Maps are key/value pairs (similar to dictionaries in Python)
  var toppings = {"John":"Pepperoni", "Mary":"Cheese"};
  print(toppings);

  print(toppings["John"]);  // prints "Pepperoni"

  // Show values
  print(toppings.values); // prints (Pepperoni, Cheese)

  // Show keys
  print(toppings.keys); // prints (John, Mary)

  // Show length
  print(toppings.length); // prints 2

  // Add something
  toppings["Tim"] = "Sausage";
  print(toppings);

  // Add many things
  toppings.addAll({"Tina":"Bacon", "Steve":"Cheddar"});
  print(toppings);

  // Remove something
  toppings.remove("Steve");
  print(toppings);

  // Remove everything
  toppings.clear();
  print(toppings);
}