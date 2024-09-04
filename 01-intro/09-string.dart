void main() {
  // String

  String schoolName = 'Diamond School';
  String address = 'New York 2140';

  print('School name is $schoolName and address is $address');

  // Create A Multi-Line String In Dart

  String multiLineText = '''
This is Multi Line Text
with 3 single quotes
I am also writing here.
  ''';

  String otherMultiLineText = """
This is Multi Line Text
with 3 double quotes
I am also writing here.
  """;

  print('Multiline text is $multiLineText');
  print('Other multiline text is $otherMultiLineText');

  // Special Character In String

  print('I am from \nUS');
  print('I am from \tChina');


  // Create A Raw String In Dart
  num price = 10;
  String withoutRawString = 'The value of price is \t $price';
  String withRawString = r'The value of price is \t $price';
  print('Without Raw: $withoutRawString');
  print('With Raw: $withRawString');
}