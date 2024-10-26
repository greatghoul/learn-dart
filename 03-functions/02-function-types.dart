void main() {
  print(':: no parameter & no return value');
  printName();

  print('');
  print(':: parameter & no return type');
  printGivenName('Mario Qiu');
  add(10, 20);

  print('');
  print(':: no parameter & return type');
  String name = primeMinisterName();
  print('The name from function is $name');

  print('');
  print(':: parameter & return type');
  double result = calculateInterest(5000.0, 3, 3);
  print('the simple interest is $result');
}

void printName() {
  print('my name is Mario Qiu');
}

void printGivenName(String name) {
  print('welcome $name');
}

void add(int a, int b) {
  int sum = a + b;
  print('the sum is $sum');
}

String primeMinisterName() {
  return 'Mario Qiu';
}

double calculateInterest(double principal, double rate, double time) {
  double interest = principal * rate * time / 100;
  return interest;
}
