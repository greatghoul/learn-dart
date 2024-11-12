import 'dart:math';

void main() {
  Object name = 'Pratik';
  if (name is String) {
    print('the length of name is ${name.length}');
  }

  String result;
  if (DateTime.now().hour < 12) {
    result = 'good morning.';
  } else {
    result = 'good afternoon';
  }
  print('result is $result');
  print('length of result is ${result.length}');

  printLength('hello');
  DataProvider().myMethod();
}

void printLength(String? text) {
  if (text == null) {
    throw Exception('the text is null');
  }

  print('length of text is ${text.length}');
}

class DataProvider {
  String? get stringOrNull => Random().nextBool() ? 'hello' : null;

  void myMethod() {
    String? value = stringOrNull;
    if (value is String) {
      print('the length of value is ${value.length}');
    } else {
      print('the value is not string');
    }
  }
}
