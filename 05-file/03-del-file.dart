import 'dart:io';

void main() {
  File file = File('05-file/test2.txt');
  file.deleteSync();
  print('File deleted.');

  if (file.existsSync()) {
    print('File still exists.');
  } else {
    print('File does not exist.');
  }
}
