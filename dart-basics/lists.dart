void main() {
  var myList = [1, 2, 3];
  print(myList);

  print(myList[0]);

  // Change an item
  myList[0] = 41;
  print(myList);

  // Empty list
  var emptyList = [];
  print(emptyList);

  // Add to empty list
  emptyList.add(41);
  print(emptyList);

  // Add multiple to empty list
  emptyList.addAll([1, 2, 3, 4, 5]);
  print(emptyList);

  // Insert at specific position(position, item)
  myList.insert(3, 900);
  print(myList);

  // Insert many
  myList.insertAll(1, [99, 98, 97, 96]);
  print(myList);

  // Mixed lists
  var mixedList = [1, 2, 3, "Anna", "Bob"];
  print(mixedList);

  // Remove from list
  mixedList.remove("Bob");
  print(mixedList);

  // Remove from specific location
  mixedList.removeAt(1);
  print(mixedList);
}