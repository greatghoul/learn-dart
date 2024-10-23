void main() {
  print('print 1 to 10 using while loop');
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

  print('');
  print('print 10 to 1 using while loop');
  i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }

  print('');
  print('display sum of n nature numbers using while loop');
  int total = 0;
  i = 1;
  while (i <= 100) {
    total += i;
    i++;
  }
  print('total is $total');

  print('');
  print('display even numbers between 50 and 100 using while loop');
  i = 50;
  while (i <= 100) {
    if (i % 2 == 0) {
      print(i);
    }
    i++;
  }

  print('');
  print('print 1 to 10 using do while loop');
  i = 1;
  do {
    print(i);
    i++;
  } while (i <= 10);

  print('');
  print('print 10 to 1 using do while loop');
  i = 10;
  do {
    print(i);
    i--;
  } while (i >= 1);

  print('');
  print('display sum of n nature numbers using do while loop');
  total = 0;
  i = 1;
  do {
    total += i;
    i++;
  } while (i <= 100);
  print('total is $total');

  print('');
  print('when the do while condition is false');
  i = 0;
  do {
    print('hello');
    i--;
  } while (i > 1);
}
