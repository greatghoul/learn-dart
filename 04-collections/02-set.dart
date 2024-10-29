void main() {
  Set<String> fruits = {'apple', 'banana', 'orange', 'pineapple'};

  print('first value is ${fruits.first}');
  print('last value is ${fruits.last}');
  print('is fruits empty? ${fruits.isEmpty}');
  print('is fruits not empty? ${fruits.isNotEmpty}');
  print('length of fruits is ${fruits.length}');
  print('is fruits contains banana? ${fruits.contains('banana')}');
  print('is fruits contains mango? ${fruits.contains('mango')}');

  fruits.add('lemon');
  fruits.addAll(['watermelon', 'grape']);
  print('after add: $fruits');

  fruits.remove('apple');
  print('after remove: $fruits');

  Set<String> fruits2 = {'apple', 'banana', 'orange', 'pineapple'};
  print('difference between fruits and fruits2: ${fruits.difference(fruits2)}');
  print('difference between fruits2 and fruits: ${fruits2.difference(fruits)}');
  print('intersection between fruits and fruits2: ${fruits.intersection(fruits2)}');
  print('intersection between fruits2 and fruits: ${fruits2.intersection(fruits)}');
  print('before clear: $fruits2');
  fruits2.clear();
  print('after clear: $fruits2');
  print('frunits element index 2 is ${fruits.elementAt(2)}');
}
