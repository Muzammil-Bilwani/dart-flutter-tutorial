void main() {
  // If Statements
  int age = 32;
  if (age < 18) {
    print("You are in school. Chota baby");
  } else if (age < 20) {
    print("You are in college. Chota bhai");
  } else {
    print("You are in university. Chota boss");
  }

  // Dart - Logical Operators:

  // && - AND
  // || - OR
  // ! - NOT

  int salary = 500;
  print("Your salary is $salary");
  if (salary > 10000 && salary <= 100000) {
    print("You are a middle class person");
  } else if (salary > 100000 || salary <= 1000000) {
    print("You are a rich person");
  } else {
    print("You are a poor person");
  }

  bool isRaining = true;
  if (!isRaining) {
    print("You can go out");
  } else {
    print("You can't go out");
  }

  // Dart - For Loops:

  for (int i = 1; i < 10; i++) {
    if (i == 5) {
      break;
    }
    if (i == 2) {
      continue;
    }
    print("Hello World");
    print(i);
  }

  // Dart - While Loops:

  int i = 1;
  while (i < 10) {
    print("Hello World");
    print(i);
    i++;
  }

  // Dart - Do While Loops:

  int j = 1;
  do {
    print("Hello World");
    print(j);
    j++;
  } while (j < 1);

  // // Dart - Functions:
  addTwoNumber(1, 2);
  addTwoNumber(3, 3);
  addTwoNumber(4, 1);
  giveAverage(1, 2, 3);
  getBonusMarks(5);
  getBonusMarks(5, totalMarks: 20);
}

void addTwoNumber(int a, int b) => print(a + b);

void giveAverage(int a, int b, int c) {
  int sum = a + b + c;
  double average = sum / 3;
  print(average);
}

int getBonusMarks(
  int marks, {
  int totalMarks = 10,
}) {
  int bonusMarks = totalMarks - marks;
  print(bonusMarks);
  return bonusMarks;
}
