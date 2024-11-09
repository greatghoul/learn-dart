class Area1 {
  final double length;
  final double breadth;
  final double area;

  const Area1(this.length, this.breadth) : area = length * breadth;
}

class Area2 {
  final double length;
  final double breadth;
  final double area;

  const Area2._internal(this.length, this.breadth) : area = length * breadth;

  factory Area2(double length, double breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception('Invalid length or breadth');
    }

    return Area2._internal(length, breadth);
  }
}

class Singleton {
  static final Singleton _instance = Singleton._internal();

  factory Singleton() => _instance;

  Singleton._internal();
}

void main() {
  Area1 area11 = const Area1(10, 20);
  print('area is ${area11.area}');
  Area1 area12 = const Area1(-10, 20);
  print('area is ${area12.area}');

  try {
    Area2 area21 = Area2(10, 20);
    print('area is ${area21.area}');
    Area2 area22 = Area2(-10, 20);
    print('area is ${area22.area}');
  } catch (ex) {
    print(ex);
  }

  Singleton singleton = Singleton();
  Singleton singleton1 = Singleton();
  print(singleton.hashCode);
  print(singleton1.hashCode);
}
