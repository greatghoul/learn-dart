int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;
int mul(int a, int b) => a * b;
double div(int a, int b) => a / b;

void main() {
  int a = 100;
  int b = 30;

  print('the sum is ${add(a, b)}');
  print('the diff is ${sub(a, b)}');
  print('the mul is ${mul(a, b)}');
  print('the div is ${div(a, b)}');
}
