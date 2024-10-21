void main() {
  print("\nprint 1 to 10 using for loop");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("\nprint 10 to 1 using for loop");
  for (int i = 10; i >= 1; i--) {
    print(i);
  }

  print("\nprint name 10 times using for loop");
  for (int i = 0; i < 10; i++) {
    print("Mario Qiu");
  }

  print("\ndisplay sum of n natural numbers using for loop");
  int total = 0;
  for (int i = 1; i <= 100; i++) {
    total += i;
  }
  print("Total is $total");

  print("\ndisplay even numbers between 50 to 100 using for loop");
  for (int i = 50; i <= 100; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
