void main() {
  int num1 = 11;
  int num2 = 3;

  print('num1 / num2 = ${num1 / num2}');
  print('num1 ~/ num2 = ${num1 ~/ num2}');

  double age = 24;
  print('$age += 2 = ${age += 2}');
  print('$age -= 2 = ${age -= 2}');
  print('$age *= 2 = ${age *= 2}');
  print('$age /= 2 = ${age /= 2}');
  print('$age is int ? ${age is int}');
  print('$age is not int ? ${age is! int}');
}