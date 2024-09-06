import 'dart:io';

void main() {
  // string input
  stdout.write('Enter name: ');
  String? name = stdin.readLineSync();
  print('name is $name');

  // int input
  stdout.write('Enter age: ');
  int? age = int.parse(stdin.readLineSync()!);
  print('age is $age');

  // float input
  stdout.write('Enter weight in kg: ');
  double weight = double.parse(stdin.readLineSync()!);
  print('weight is $weight');
}