class Animal {
  void eat() {
    print('animal is eating');
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print('Dog is eating');
  }
}

class Car {
  void power() {
    print('it runs on petrol');
  }
}

class Honda extends Car {}

class Tesla extends Car {
  @override
  void power() {
    print('it runs on electric');
  }
}

void main() {
  Animal animal = Animal();
  animal.eat();
  Dog dog = Dog();
  dog.eat();

  Honda honda = Honda();
  honda.power();
  Tesla tesla = Tesla();
  tesla.power();
}
