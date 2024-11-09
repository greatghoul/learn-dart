mixin ElectricVariant {
  void electricVariant() {
    print('this is electric variant');
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print('this is petrol variant');
  }
}

class Car with ElectricVariant, PetrolVariant {}

mixin CanFly {
  void fly() {
    print('I can fly');
  }
}

mixin CanWalk {
  void walk() {
    print('I can walk');
  }
}

class Bird with CanFly, CanWalk {}

class Human with CanWalk {}

abstract class Animal {
  String name;
  double speed;

  Animal(this.name, this.speed);

  void run();
}

mixin CanRun on Animal {
  @override
  void run() => print('$name is running at speed $speed');
}

class Dog extends Animal with CanRun {
  Dog(String name, double speed) : super(name, speed);
}

void main() {
  var car = Car();
  car.electricVariant();
  car.petrolVariant();

  var bird = Bird();
  bird.fly();
  bird.walk();

  var human = Human();
  human.walk();

  var dog = Dog('Dog', 10.0);
  dog.run();
}
