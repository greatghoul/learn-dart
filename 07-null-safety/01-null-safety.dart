void printAddress(String? address) {
  print(address);
}

class Person {
  String? name;
  Person(this.name);
}

class Profile {
  String? name;
  String? bio;

  Profile(this.name, this.bio);

  void printProfile() {
    print('Name: ${name ?? 'unknown'}');
    print('Bio: ${bio ?? 'none provided'}');
  }
}

void main() {
  String? name;
  name = 'John';
  name = null;

  if (name == null) {
    print('Name is null');
  }

  String name1 = name ?? 'stranger';
  print(name1);

  // String name2 = name!;
  // print(name2);

  List<int?> items = [1, 2, null, 4];
  print(items);

  // give error
  printAddress(null);

  Person person = Person(null);

  Profile profile1 = Profile('John', 'Software engineer and avid reader');
  profile1.printProfile();
  Profile profile2 = Profile('John', null);
  profile2.printProfile();
  Profile profile3 = Profile(null, 'Loves to travel and try foods');
  profile3.printProfile();
  Profile profile4 = Profile(null, null);
  profile4.printProfile();
}
