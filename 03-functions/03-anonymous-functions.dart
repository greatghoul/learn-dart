void main() {
  const fruits = ['apple', 'banana', 'orange'];
  fruits.forEach((fruit) {
    print(fruit);
  });

  var cube = (int number) {
    return number * number * number;
  };

  print('the cube of 2 is ${cube(2)}');
  print('the cube of 3 is ${cube(3)}');
}
