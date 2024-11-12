late String name;

void main() {
  name = 'john';
  print(name);

  Person person = Person();
  person.name = 'john';
  person.greet();

  print('starting');
  late String value = provideCountry();
  print('End');
  print(value);

  Member member = Member(10, 'John');
  print(member.name);
  print(member.description);

  print('start');
  Employee employee = Employee();
  print('first name: ${employee.firstName}');
  print('last name: ${employee.lastName}');
  print('full name: ${employee.fullName}');
  print('end');

  Student student = Student('John');
  print(student.name);
  // student.name = 'Doe'; // error
}

String provideCountry() {
  print('function is called');
  return 'usa';
}

class Person {
  late String name;

  void greet() {
    print('hello $name');
  }
}

class Member {
  final int age;
  final String name;
  late String description = heavyComputation();

  Member(this.age, this.name) {
    print('constructor is called');
  }

  String heavyComputation() {
    print('heavyComputation is called');
    return 'heavy computation';
  }
}

class Employee {
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('_getFullName is called');
    return 'John Doe';
  }
}

class Student {
  late final String name;
  Student(this.name);
}
