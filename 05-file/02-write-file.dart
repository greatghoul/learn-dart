import 'dart:io';

void main() {
  File file = File('05-file/test2.txt');

  file.writeAsStringSync('Welcome to test2.txt file.');
  print(':: after write:');
  print(file.readAsStringSync());
  print('');

  file.writeAsStringSync('\nThis is a new content.', mode: FileMode.append);
  print(':: after append:');
  print(file.readAsStringSync());
}
