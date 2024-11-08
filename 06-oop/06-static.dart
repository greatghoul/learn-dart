class Empoyee {
  static int count = 0;

  Empoyee() {
    count++;
  }

  void totalEmployee() {
    print('total employee is ${count}');
  }
}

class Student {
  int id;
  String name;
  static String schoolName = 'ABC School';

  Student(this.id, this.name);

  void display() {
    print('Student => Id: $id, Name: $name, School Name: $schoolName');
  }
}

class SimpleInterest {
  static double calculateInterest(double principal, double rate, int time) {
    return principal * rate * time / 100;
  }
}

void main() {
  Empoyee e1 = Empoyee();
  e1.totalEmployee();
  Empoyee e2 = Empoyee();
  e2.totalEmployee();
  Empoyee e3 = Empoyee();
  e3.totalEmployee();

  Student s1 = Student(1, 'John Doe');
  s1.display();
  Student s2 = Student(2, 'Mary Jane');
  s2.display();
  Student s3 = Student(3, 'Peter Parker');
  s3.display();
  print('Student School Name: ${Student.schoolName}');

  print('the simple interest is ${SimpleInterest.calculateInterest(1000, 5, 3)}');
}
