class Employee {
  int? _id;
  String? _name;

  void setId(int id) {
    _id = id;
  }

  void setName(String name) {
    _name = name;
  }

  int? getId() {
    return _id;
  }

  String? getName() {
    return _name;
  }
}

class Student {
  final _schoolName = 'Diamond School';

  String getSchoolName() {
    return _schoolName;
  }
}

class Vehicle {
  String? _model;
  int? _year;

  String? get model => _model;
  set model(String? model) => _model = model;

  int? get year => _year;
  set year(int? year) => _year = year;
}

void main() {
  Employee employee = Employee();
  employee.setId(1);
  employee.setName('John Doe');
  print('ID: ${employee.getId()}');
  print('Name: ${employee.getName()}');

  employee._name = 'greatghoul';
  print('Name: ${employee.getName()}');

  Student student = Student();
  print('School Name: ${student.getSchoolName()}');

  // not able to update read only property
  // student._schoolName = 'Diamond High School';

  Vehicle vehicle = Vehicle();
  vehicle.model = 'Honda Civic';
  vehicle.year = 2022;
  print('Model: ${vehicle.model}');
  print('Year: ${vehicle.year}');
}
