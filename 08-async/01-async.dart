void main() {
  print('first');
  Future.delayed(Duration(seconds: 2), () => print('second'));
  print('third');
  print('last');
}
