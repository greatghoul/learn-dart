Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 3), () => 'Mark');
}

void getData() async {
  String data = await middleFunction();
  print(data);
}

Future<String> middleFunction() async {
  return Future.delayed(
    Duration(seconds: 3),
    () => 'Hello',
  );
}

void getDataHandleError() async {
  try {
    String data = await middleFunction();
  } catch (err) {
    print('some error $err');
  }
}

void main() {
  print('start');
  getUserName().then((name) => print(name));
  getData();
  getDataHandleError();
  print('end');
}
