void main() {
  // if
  var age = 20;
  if (age >= 18) {
    print("Your are voter.");
  }

  // if-else
  int age2 = 12;
  if (age2 >= 18) {
    print("You are voter.");
  } else {
    print("You are not voter.");
  }

  // condition based on boolean value
  bool isMarried = false;
  if (isMarried) {
    print("You are married");
  } else {
    print("You are single.");
  }

  // if-else-if
  int week = 4;
  if (week == 1) {
    print("Monday");
  } else if (week == 2) {
    print("Tuesday");
  } else if (week == 3) {
    print("Wednesday");
  } else if (week == 4) {
    print("Thursday");
  } else if (week == 5) {
    print("Friday");
  } else if (week == 6) {
    print("Saturday");
  } else if (week == 7) {
    print("Sunday");
  } else {
    print("Invalid weekday.");
  }

  // multiple conditions
  int num1 = 1200;
  int num2 = 1000;
  int num3 = 150;

  if (num1 > num2 && num1 > num3) {
    print("Num 1 is greater: i.e $num1");
  }
  if (num2 > num1 && num2 > num3) {
    print("Num 2 is greater: i.e $num2");
  }
  if (num3 > num1 && num3 > num2) {
    print("Num 3 is greater: i.e $num3");
  }
}