void main() {
  // For loop
  var num = 5;
  for(var i = num; i >= 1; i--){
    print(i);
  }

  print("\n");

  var array = [1, 2, 3, 4];
  for(var i = 0; i < 4; i++) {
    print(array[i]);
  }

  print("\n");

  // For In loop

  var names = ["Anna", "Bob", "Tina", "Steve"];

  for(var name in names) {
    print(name);
  }

  print("\n");

  // While loop

  while(num >= 1) {
    print(num);
    num--;
  }
  
}