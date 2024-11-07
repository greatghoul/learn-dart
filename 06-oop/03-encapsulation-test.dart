import '03-encapsulation.dart';

void main() {
  Employee employee = Employee();
  employee.setId(1);
  employee.setName('John Doe');
  print('ID: ${employee.getId()}');
  print('Name: ${employee.getName()}');

  // not able to access privte property in another library.
  // employee._name = 'greatghoul';
}
