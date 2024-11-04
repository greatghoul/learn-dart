class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print('Name: $name');
    print('Number of legs: $numberOfLegs');
    print('Life span: $lifeSpan');
  }
}

class Rectangle {
  double? length;
  double? breadth;

  double area() {
    return length! * breadth!;
  }
}

class SimpleInterest {
  double? principal;
  double? rate;
  int? time;

  double interest() {
    return (principal! * rate! * time!) / 100;
  }
}

void main() {
  Animal animal = Animal();
  animal.name = 'Dog';
  animal.numberOfLegs = 4;
  animal.lifeSpan = 10;
  animal.display();

  Rectangle rectangle = Rectangle();
  rectangle.length = 10.0;
  rectangle.breadth = 5.0;
  print('Area of rectangle is ${rectangle.area()}');

  SimpleInterest simpleInterest = SimpleInterest();
  simpleInterest.principal = 5000.0;
  simpleInterest.rate = 3.0;
  simpleInterest.time = 3;
  print('Simple interest is ${simpleInterest.interest()}');
}
