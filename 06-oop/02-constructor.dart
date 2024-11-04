class Student {
  String? name;
  int? age;
  int? rollNumber;

  Student(String name, int age, int rollNumber) {
    print('Constructor called with $name, $age, $rollNumber');
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  void display() {
    print('Student => Name: $name, Age: $age, Roll Number: $rollNumber');
  }
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  void display() {
    print('Person => Name: $name, Age: $age');
  }
}

class Employee {
  String? name;
  int? age;
  int? salary;

  Employee(this.name, this.age, {this.salary = 0});

  void display() {
    print('Employee => Name: $name, Age: $age, Salary: $salary');
  }
}

class Chair {
  String? name;
  String? color;

  Chair({this.name, this.color});

  void display() {
    print('Chair => Name: $name, Color: $color');
  }
}

class Table {
  String? name;
  String? color;

  Table({this.name, this.color = "White"});

  void display() {
    print('Table => Name: $name, Color: $color');
  }
}

class Laptop {
  String? name;
  String? brand;
  int? price;

  Laptop({this.name, this.price}) {
    print('Laptop default constructor called');
    brand = 'Thinkpad';
  }

  // Named constructor
  Laptop.huawei({this.name, this.price}) {
    this.brand = 'Huawei';
  }

  void display() {
    print('Laptop => Name: $name, Brand: $brand, Price: $price');
  }
}

class Car {
  final String? name;
  final String? color;
  final int? year;

  const Car({this.name, this.color, this.year});

  void display() {
    print('Car => Name: $name, Color: $color, Year: $year');
  }
}

void main() {
  Student student = Student('John Doe', 20, 123);
  print('Name: ${student.name}, Age: ${student.age}, Roll Number: ${student.rollNumber}');
  student.display();

  Person person = Person('Jane Doe', 30);
  person.display();

  Employee employee1 = Employee('Bob Smith', 25, salary: 50000);
  Employee employee2 = Employee('Alice Johnson', 28);
  employee1.display();
  employee2.display();

  Chair chair = Chair(name: 'Wooden Chair', color: 'Brown');
  chair.display();

  Table table1 = Table(name: 'Wooden Table');
  Table table2 = Table(name: 'Metal Table', color: 'Black');
  table1.display();
  table2.display();

  Laptop laptop1 = Laptop(name: 'Name1', price: 3000);
  Laptop laptop2 = Laptop(name: 'Name2', price: 4000);
  Laptop laptop3 = Laptop.huawei(name: 'Name3', price: 5000);
  laptop1.display();
  laptop2.display();
  laptop3.display();

  Car car = const Car(name: 'Car1', color: 'Red', year: 2020);
  car.display();
  // car.name = 'Car2';
}
