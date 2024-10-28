void main() {
  accessItemOfList();
  getIndexByValue();
  findLengthOfList();
  changeValuesOfList();
  immutableList();
  checkEmpty();
  reverseList();
  addItems();
  replaceRandgeOfList();
  removeItem();
  iterateThroughList();
}

void accessItemOfList() {
  print(':: access item of list');

  var list = [1, 2, 3, 4, 5];
  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);
  print(list[4]);

  print('');
}

void getIndexByValue() {
  print(':: get index by value');

  var list = [1, 2, 3, 4, 5];
  print(list.indexOf(3));
  print(list.indexOf(2));
  print('first is ${list.first}');
  print('last is ${list.last}');

  print('');
}

void findLengthOfList() {
  print(':: find length of list');

  var list = [1, 2, 3, 4, 5];
  print(list.length);

  print('');
}

void changeValuesOfList() {
  print(':: change values of list');

  var list = [1, 2, 3, 4, 5];
  list[0] = 10;
  list[1] = 20;
  list[2] = 30;
  list[3] = 40;
  list[4] = 50;
  print(list);

  print('');
}

void immutableList() {
  print(':: immutable list');

  const List<String> names = ['Raj', 'John', 'Max'];

  try {
    names[0] = 'Mario';
    print(names);
  } catch (ex) {
    print(ex);
  }

  print('');
}

void checkEmpty() {
  print(':: check empty list');

  List<String> drinks = ["water", "milk", "juice"];
  List<int> numbers = [1, 2, 3, 4, 5];

  print('Is drinks empty? ${drinks.isEmpty}');
  print('Is drinks not empty? ${drinks.isNotEmpty}');
  print('Is numbers empty? ${numbers.isEmpty}');
  print('Is numbers not empty? ${numbers.isNotEmpty}');

  print('');
}

void reverseList() {
  print(':: reverse list');

  List<String> drinks = ["water", "milk", "juice"];
  print('before reversed: $drinks');
  print('after reversed: ${drinks.reversed}');

  print('');
}

void addItems() {
  print(':: add items to list');

  List<String> drinks = ["water", "milk", "juice"];
  print('initial: $drinks');

  drinks.add('tea');
  print('after add: $drinks');

  drinks.addAll(['coffee', 'beer']);
  print('after addAll: $drinks');

  drinks.insert(1, 'black tea');
  print('after insert: $drinks');

  drinks.insertAll(0, ['black coffee', 'black beer']);
  print('after insertAll: $drinks');

  print('');
}

void replaceRandgeOfList() {
  print(':: replace range of list');

  List<String> drinks = ["water", "milk", "juice"];
  print('initial: $drinks');

  drinks.replaceRange(0, 2, ['coffee', 'beer']);
  print('after replaceRange: $drinks');

  print('');
}

void removeItem() {
  print(':: remove item from list');

  List<String> drinks = ["water", "milk", "juice", "tea", "coffee", "beer", "black tea"];
  print('initial: $drinks');

  var remove = drinks.remove('milk');
  print('after remove: $drinks');
  print('remove returns: $remove');

  var removeAt = drinks.removeAt(1);
  print('after removeAt: $drinks');
  print('removeAt returns: $removeAt');

  var removeLast = drinks.removeLast();
  print('after removeLast: $drinks');
  print('removeLast returns: $removeLast');

  drinks.removeRange(1, 3);
  print('after removeRange: $drinks');
  print('removeRange returns void');

  print('');
}

void iterateThroughList() {
  print(':: iterate through list');

  List<int> list = [10, 20, 30, 40, 50];
  print('initial: $list');

  var doubledList = list.map((n) => n * 2);
  print('after map: $doubledList');

  var combinedList = [...list, ...doubledList, 100, 200];
  print('after spread: $combinedList');

  var filteredList = combinedList.where((number) => number < 100);
  print('after where: $filteredList');

  print('');
}
