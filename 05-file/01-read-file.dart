import 'dart:io';

void main() {
  File file = File('05-file/test.txt');
  String contents = file.readAsStringSync();
  print(':: file contents');
  print(contents);

  print('');
  print(':: file properties');
  print('path: ${file.path}');
  print('absolute path: ${file.absolute.path}');
  print('last modified: ${file.lastModifiedSync()}');
  print('last access: ${file.lastAccessedSync()}');
  print('size: ${file.lengthSync()}');
  print('exists: ${file.existsSync()}');
}
