### Week 2 - Control Flow and Functions in Dart - If Statements, Logical Operators, For Loops

- Control Flow - If Statements
- Logical Operators
- For Loops in Dart
- While Do-While and Break in Dart
- Switch Cases
- Introduction to Functions in Dart
- Function Return Types - String-Int-Booleans
- Dart - Using the => Operator for Returning Expressions
- Arguments and Functions in Dart
- Optional Parameters in Dart
- Lexical Scope in Dart

#### Dart - If Statements:

If statements are used to execute a block of code if a condition is true. In Dart, you can use the if statement to execute a block of code if a condition is true. For example:

```dart
if (5 > 3) {
  print("5 is greater than 3");
}
```

#### Dart - Logical Operators:

Dart supports the following logical operators:

- && (and)
- || (or)
- ! (not)

#### Dart - For Loops:

For loops are used to execute a block of code a certain number of times. In Dart, you can use the for loop to execute a block of code a certain number of times. For example:

```dart
for (int i = 0; i < 5; i++) {
  print("Hello World");
}
```

#### Dart - While Do-While and Break in Dart:

While loops are used to execute a block of code while a condition is true. In Dart, you can use the while loop to execute a block of code while a condition is true. For example:

```dart
int i = 0;
while (i < 5) {
  print("Hello World");
  i++;
}
```

#### Dart - Switch Cases:

Switch cases are used to execute a block of code based on the value of a variable. In Dart, you can use the switch statement to execute a block of code based on the value of a variable. For example:

```dart
int number = 5;
switch (number) {
  case 1:
    print("One");
    break;
  case 2:
    print("Two");
    break;
  case 3:
    print("Three");
    break;
  case 4:
    print("Four");
    break;
  case 5:
    print("Five");
    break;
  default:
    print("Number not found");
}
```

#### Dart - Introduction to Functions:

Functions are used to execute a block of code when they are called. In Dart, you can use the function keyword to declare a function. For example:

```dart
void main() {
  printHello();
}

void printHello() {
  print("Hello");
}
```

#### Dart - Function Return Types:

Functions can return a value. In Dart, you can use the return keyword to return a value from a function. For example:

```dart
void main() {
  print(add(5, 3));
}

int add(int a, int b) {
  return a + b;
}
```

#### Dart - Using the => Operator for Returning Expressions:

You can use the => operator to return an expression. In Dart, you can use the => operator to return an expression. For example:

```dart
void main() {
  print(add(5, 3));
}

int add(int a, int b) => a + b;
```

#### Dart - Arguments and Functions:

Functions can take arguments. In Dart, you can use the function arguments to pass values to a function. For example:

```dart
void main() {
  print(add(5, 3));
}

int add(int a, int b) {
  return a + b;
}
```

#### Dart - Optional Parameters in Dart:

You can make function parameters optional. In Dart, you can use the [] operator to make a parameter optional. For example:

```dart
void main() {
  print(add(5));
}

int add(int a, [int b = 0]) {
  return a + b;
}
```

#### Dart - Lexical Scope in Dart:

Variables have a scope. In Dart, you can use the var keyword to declare a variable. For example:

```dart
void main() {
  var a = 5;
  print(a);
}
```

### Some Exercises

#### Basic Exercises

- [ ] Write a program to check if a number is positive, negative or zero.
- [ ] Write a program to check if a number is odd or even.
- [ ] Write a program to check if a year is leap year or not.
- [ ] Write a program to check if a character is alphabet or not.
- [ ] Write a program to input any alphabet and check whether it is vowel or consonant.
- [ ] Write a program to input any character and check whether it is alphabet, digit or special character.
- [ ] Write a program to check whether a character is uppercase or lowercase alphabet.
- [ ] Write a program to input week number and print week day.
- [ ] Write a program to input month number and print number of days in that month.
- [ ] Write a program to input angles of a triangle and check whether triangle is valid or not.
- [ ] Write a program to find all roots of a quadratic equation.

#### Intermediate Exercises

- [ ] Write a program to input basic salary of an employee and calculate its Gross salary according to following:
  - Basic Salary <= 10000 : HRA = 20%, DA = 80%
  - Basic Salary <= 20000 : HRA = 25%, DA = 90%
  - Basic Salary > 20000 : HRA = 30%, DA = 95%
- [ ] Write a program to input electricity unit charges and calculate total electricity bill according to the given condition:
  - For first 50 units Rs. 0.50/unit
  - For next 100 units Rs. 0.75/unit
  - For next 100 units Rs. 1.20/unit
  - For unit above 250 Rs. 1.50/unit
  - An additional surcharge of 20% is added to the bill

#### Advanced Exercises

- [ ] Write a program to input any character and check whether it is alphabet, digit or special character using switch case.
- [ ] Write a program to input week number and print week day using switch case.
- [ ] Write a program to input month number and print number of days in that month using switch case.
- [ ] Write a program to find all roots of a quadratic equation using switch case.
- [ ] Write a program to input any alphabet and check whether it is vowel or consonant using switch case.
- [ ] Write a program to input any character and check whether it is alphabet, digit or special character using if else.
- [ ] Write a program to input week number and print week day using if else.
- [ ] Write a program to input month number and print number of days in that month using if else.
- [ ] Write a program to find all roots of a quadratic equation using if else.
- [ ] Write a program to input any alphabet and check whether it is vowel or consonant using if else.
- [ ] Write a program to input any character and check whether it is alphabet, digit or special character using nested if else.
