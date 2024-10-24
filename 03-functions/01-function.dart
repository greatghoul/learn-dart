void main() {
  print(':: function that prints name');
  printName();

  print('');
  print(':: function to find sum of two numbers');
  add(10, 20);

  print('');
  print(':: function that find simple interest');
  double principal = 5000;
  double time = 3;
  double rate = 3;
  calculateInterest(principal, rate, time);
}

void printName() {
  print('my name is Mario Qiu, I am from function.');
}

void add(int num1, int num2) {
  int sum = num1 + num2;
  print('the sum of $num1 and $num2 is $sum');
}

void calculateInterest(double principal, double rate, double time) {
  double interest = principal * rate * time / 100;
  print('simple interest is $interest');
}
