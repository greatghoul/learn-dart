import 'dart:async';

Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Max';
}

Stream<String> getUserName2() {
  return Stream.fromIterable(['Mark', 'John', 'Max']);
}

Future<int> doSomeLongTask() async {
  await Future.delayed(Duration(seconds: 2));
  return 21;
}

Stream<int> countForTenSeconds() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<int> str(int n) async* {
  if (n > 0) {
    await Future.delayed(Duration(seconds: 2));
    yield n;
    yield* str(n - 2);
  }
}

void streamControllerExample() {
  print('stream controller example');
  var controller = StreamController();
  controller.stream.listen(
    (data) => print(data),
    onError: (err) => print(err),
    onDone: () => print('done'),
  );
  controller.add('hello');
  controller.add(2);
  controller.addError('error!');
  controller.close();
}

void main() async {
  streamControllerExample();
  await Future.delayed(Duration(seconds: 2));

  print('stream yield* example');
  str(10).forEach(print);

  print('stream async* example');
  await for (int i in countForTenSeconds()) {
    print(i);
  }

  print('future async example');
  int result = await doSomeLongTask();
  print(result);

  print('stream from getUserName2');
  await for (String name in getUserName2()) {
    print(name);
  }

  print('stream frm getUserName');
  await for (String name in getUserName()) {
    print(name);
  }
}
