abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print('Car is started');
  }

  @override
  void stop() {
    print('Car is stopped');
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print('Bike is started');
  }

  @override
  void stop() {
    print('Bike is stopped');
  }
}

abstract class Shape {
  int dim1, dim2;

  Shape(this.dim1, this.dim2);

  void area();
}

class Rectangle extends Shape {
  Rectangle(int dim1, int dim2) : super(dim1, dim2);

  @override
  void area() {
    print('Area of rectangle is ${dim1 * dim2}');
  }
}

class Triangle extends Shape {
  Triangle(int dim1, int dim2) : super(dim1, dim2);

  @override
  void area() {
    print('Area of triangle is ${0.5 * dim1 * dim2}');
  }
}

void main() {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();

  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();

  Triangle triangle = Triangle(10, 20);
  triangle.area();

  // not possible.
  // Shape shape = Shape(10, 20)
}
