void main() {
  print("\nprint each item of list using foreach");
  List<String> footballPlayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
  footballPlayers.forEach((name) => print(name));

  print('\nprint each total and average of lists');
  List<int> numbers = [1, 2, 3, 4, 5];
  int total = 0;
  numbers.forEach((num) => total += num);
  print('Total is $total');
  double avg = total / numbers.length;
  print('Average is $avg');

  print('\nfor in loop in dart');
  for (String player in footballPlayers) {
    print(player);
  }

  print('\nhow to find index value of list');
  footballPlayers.asMap().forEach((index, value) {
    print('$value index is $index');
  });

  print('\nprint unicode value of each character of string');
  String name = 'Mario Qiu';
  for (var codePoint in name.runes) {
    print('Unicode of ${String.fromCharCode(codePoint)} is $codePoint');
  }
}
