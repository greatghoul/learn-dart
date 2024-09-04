void main() {
  // Convert String To Int
  String strValue = '1';
  print('Type of strValue is ${strValue.runtimeType}');

  int intValue = int.parse(strValue);
  print('Value of intValue is $intValue');
  print('Type of intValue is ${intValue.runtimeType}');

  // Convert String To Double
  strValue = '1.1';
  print('Type of strValue is ${strValue.runtimeType}');
  double doubleValue = double.parse(strValue);
  print('Value of doubleValue is $doubleValue');
  print('Type of doubleValue is ${doubleValue.runtimeType}');

  // Convert Int To String
  int one = 1;
  print('Type of one is ${one.runtimeType}');
  String oneInString = one.toString();
  print('Value of oneInString is $oneInString');
  print('Type of oneInString is ${oneInString.runtimeType}');

  // Convert Double To Int
  double num1 = 10.01;
  int num2 = num1.toInt();

  print('The value of num1 is $num1, Its type is ${num1.runtimeType}');
  print('The value of num2 is $num2, Its type is ${num2.runtimeType}');
}