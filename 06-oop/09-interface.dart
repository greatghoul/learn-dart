class Laptop {
  turnOn() => print('Laptop turned on');
  trunOff() => print('Laptop turned off');
}

class Macbook implements Laptop {
  @override
  turnOn() => print('Macbook turned on');

  @override
  trunOff() => print('Macbook turned off');
}

abstract class Vehicle {
  void start();
  void stop();
}

class Car implements Vehicle {
  @override
  void start() {
    print('Car is started');
  }

  @override
  void stop() {
    print('Car is stopped');
  }
}

abstract class Area {
  void area();
}

abstract class Perimeter {
  void perimeter();
}

class Rectangle implements Area, Perimeter {
  int length, breadth;

  Rectangle(this.length, this.breadth);

  @override
  void area() {
    print('Area of rectangle is ${length * breadth}');
  }

  @override
  void perimeter() {
    print('Perimeter of rectangle is ${2 * (length + breadth)}');
  }
}

void main() {
  var macbook = Macbook();
  macbook.turnOn();
  macbook.trunOff();

  var car = Car();
  car.start();
  car.stop();

  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();
  rectangle.perimeter();
}
