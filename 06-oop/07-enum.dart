enum Gender { Male, Female, Other }

class Person {
  String? firstName;
  String? lastName;
  Gender? gender;

  Person(this.firstName, this.lastName, this.gender);

  void display() {
    print('Name: $firstName $lastName');
    print('Gender: $gender');
  }
}

void main() {
  Person person = Person('Mario', 'Qiu', Gender.Male);
  person.display();

  Person person1 = Person('Jane', 'Doe', Gender.Female);
  person1.display();

  for (Gender gender in Gender.values) {
    print(gender);
  }
}
