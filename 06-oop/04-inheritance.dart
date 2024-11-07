class Person {
  String? name;
  int? age;

  void display() {
    print('Person => Name: $name, Age: $age');
  }
}

class Student extends Person {
  String? schoolName;
  String? schoolAddress;

  void displaySchoolInfo() {
    print('Student => Name: $name, Age: $age, School Name: $schoolName, School Address: $schoolAddress');
  }
}

class Car {
  String? name;
  double? price;
}

class Tesla extends Car {
  int numOfSeats = 4;
  void display() {
    print('Name: $name');
    print('Price: $price');
  }
}

class Model3 extends Tesla {
  int numOfSeats = 6;
  String? color;

  void display() {
    super.display();
    print('Color: $color');
    print('Number of seats: $numOfSeats');
    print('Super Number of seats: ${super.numOfSeats}');
  }
}

class Shape {
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}

class Laptop {
  Laptop(String? name, String? color) {
    print('Laptop Constructor');
    print('Name: $name');
    print('Color: $color');
  }

  Laptop.custom({String? name, String? color}) {
    print('Laptop Custom Constructor');
    print('Name: $name');
    print('Color: $color');
  }
}

class MacBook extends Laptop {
  MacBook(String? name, String? color, double? price) : super(name, color) {
    print('MacBook Constructor');
    print('Price: $price');
  }
}

class HuaweiBook extends Laptop {
  HuaweiBook({String? name, String? color, double? price}) : super.custom(name: name, color: color) {
    print('HuaweiBook Constructor');
    print('Price: $price');
  }
}

void main() {
  Student student = Student();
  student.name = 'John Doe';
  student.age = 20;
  student.schoolName = 'Diamond High School';
  student.schoolAddress = 'New York 2140';
  student.display();
  student.displaySchoolInfo();

  Model3 model3 = Model3();
  model3.name = 'Model 3';
  model3.price = 50000;
  model3.color = 'Red';
  model3.display();

  Rectangle rectangle = Rectangle();
  rectangle.diameter1 = 10;
  rectangle.diameter2 = 20;
  print('Rectangle Area: ${rectangle.area()}');

  Triangle triangle = Triangle();
  triangle.diameter1 = 10;
  triangle.diameter2 = 20;
  print('Triangle Area: ${triangle.area()}');

  var macbook = MacBook('MacBook Pro', 'Silver', 10000.0);
  var huaweibook = HuaweiBook(name: 'Huawei MateBook', color: 'Black', price: 8000.0);
}
