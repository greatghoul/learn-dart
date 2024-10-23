import 'dart:math';

class NegativeSquareRootException implements Exception {
  final int number;

  NegativeSquareRootException(this.number);

  @override
  String toString() {
    return 'Square root of negative number $number is not allowed here.';
  }
}

num squareRoot(int i) {
  if (i < 0) {
    throw NegativeSquareRootException(i);
  } else {
    return sqrt(i);
  }
}

void checkAccount(amount) {
  if (amount < 0) {
    throw new FormatException();
  }
}

void main() {
  print('try catch in dart');
  int a = 18;
  int b = 0;
  int res;

  try {
    res = a ~/ b;
    print('result is $res');
  } catch (ex) {
    print(ex);
  }

  print('');
  print('finally in dart try catch');
  a = 12;
  b = 0;
  try {
    res = a ~/ b;
  } on UnsupportedError {
    print('can not divide by zero');
  } catch (ex) {
    print(ex);
  } finally {
    print('finally block always executed.');
  }

  print('');
  print('throwing an exception');
  try {
    checkAccount(-10);
  } catch (e) {
    print('the amount cannot be negative');
  }

  print('');
  print('how to create and handle exception');
  try {
    var result = squareRoot(-4);
    print('result: $result');
  } catch (ex) {
    print(ex.runtimeType);
    print(ex);
  } finally {
    print('job completed.');
  }
}
