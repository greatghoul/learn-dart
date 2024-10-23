void main() {
  print('continue in dart');
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  print('');
  print('continue in for loop dart');
  for (int i = 10; i >= 1; i--) {
    if (i == 4) {
      continue;
    }
    print(i);
  }

  print('');
  print('continue in dart while loop');
  int i = 1;
  while (i <= 10) {
    if (i == 5) {
      i++;
      continue;
    }

    print(i);
    i++;
  }
}
