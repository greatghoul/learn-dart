import 'dart:math';

void main() {
  generateRandomNumbers();
  generateRandomBooleanAndDoubleValues();
  generateAListOfRandomNumbers();
  usefulMathFunctions();
}

void generateRandomNumbers() {
  print(':: generate random numbers');

  Random random = new Random();

  int randomNumber = random.nextInt(10);
  print('generated random number between 0 to 9: $randomNumber');

  int randomNumber2 = random.nextInt(10) + 1;
  print('generated random number between 1 to 10: $randomNumber2');

  int min = 10;
  int max = 20;
  int randomNumber3 = min + random.nextInt((max + 1) - min);
  print('generated random number between $min to $max: $randomNumber3');

  print('');
}

void generateRandomBooleanAndDoubleValues() {
  print(':: generate random boolean and double values');

  double randomDouble = Random().nextDouble();
  bool randomBool = Random().nextBool();

  print('random double value: $randomDouble');
  print('random boolean value: $randomBool');

  print('');
}

void generateAListOfRandomNumbers() {
  print(':: generate a list of random numbers');

  List<int> randomList = List.generate(10, (_) => Random().nextInt(100) + 1);
  print(randomList);

  print('');
}

void usefulMathFunctions() {
  print(':: useful math functions');

  int num1 = 9;
  int num2 = 2;

  num powernum = pow(num1, num2);
  print('power of $num1 and $num2 is $powernum');

  num maxnum = max(num1, num2);
  print('maximum of $num1 and $num2 is $maxnum');

  num minnum = min(num1, num2);
  print('minimum of $num1 and $num2 is $minnum');

  num squareRoot = sqrt(num1);
  print('square root of $num1 is $squareRoot');

  print('');
}
