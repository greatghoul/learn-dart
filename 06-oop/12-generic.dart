class Data<T> {
  T data;
  Data(this.data);
}

T genericMethod<T, U>(T value1, U value2) {
  return value1;
}

class NumData<T extends num> {
  T data;
  NumData(this.data);
}

void main() {
  Data<int> intData = Data<int>(10);
  Data<String> stringData = Data<String>('Hello');

  print('intData: ${intData.data}'); // Output: 10
  print('stringData: ${stringData.data}'); // Output: Hello

  print(genericMethod<int, String>(10, 'Hello'));
  print(genericMethod<String, int>('hello', 10));

  NumData<int> intNumData = NumData<int>(10);
  NumData<double> doubleNumData = NumData<double>(10.0);

  print('intNumData: ${intNumData.data}'); // Output: 10
  print('doubleNumData: ${doubleNumData.data}'); // Output: 10

  // Not possible
  // NumDta<String> stringNumData = NumData<String>('Hello');
}
