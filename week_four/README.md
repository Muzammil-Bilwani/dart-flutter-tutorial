## Object Oriented Programming - Intermediate - Inheritance Concepts

- Introduction to Inheritance with Dart
- Creating Classes and Inheritance Tree
- Override Methods
- Inheriting Classes with Constructors

### Introduction to Inheritance with Dart

<img src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190501121513/inheritance.png" />

Inheritance is a concept in Object Oriented Programming that allows us to create a new class from an existing class. This new class is called a subclass or child class and the existing class is called a superclass or parent class. The subclass inherits all the properties and methods of the superclass. Inheritance is a way to reuse code.

In Dart, we can create a subclass by using the `extends` keyword. The subclass inherits all the properties and methods of the superclass. The subclass can also override the properties and methods of the superclass.

```dart
class Animal {
  String name;
  int age;

  void eat() {
    print('$name is eating.');
  }
}

class Dog extends Animal {
  String breed;

  void bark() {
    print('$name is barking.');
  }
}
```

In this example, we have a Animal class with a name and age property and an eat() method. We also have a Dog class that extends Animal and adds a breed property and a bark() method. The Dog class inherits the name and age properties and the eat() method from Animal.

### Creating Classes and Inheritance Tree

To create a class in Dart, you use the class keyword followed by the name of the class. Here's an example:

```dart
class Person {
  String name;
  int age;

  void sayHello() {
    print('Hello, my name is $name.');
  }
}
```

In this example, we have a Person class with a name and age property and a sayHello() method that prints a greeting.

To create an inheritance tree, you can use the extends keyword followed by the name of the superclass. Here's an example:

```dart
class Student extends Person {
  String major;

  void sayMajor() {
    print('My major is $major.');
  }
}
```

In this example, we have a Student class that extends Person and adds a major property and a sayMajor() method that prints the student's major. The Student class inherits the name, age, and sayHello() method from Person.

### Override Methods

Sometimes you may want to override a method in a subclass to provide a different implementation. To do this in Dart, you can simply define a method with the same name as the superclass method. Here's an example:

```dart
class Animal {
  void makeSound() {
    print('The animal makes a sound.');
  }
}

class Dog extends Animal {
  void makeSound() {
    print('The dog barks.');
  }
}
```

In this example, we have an Animal class with a makeSound() method that prints a generic sound. We also have a Dog class that extends Animal and overrides the makeSound() method to print a specific sound for a dog.

### Inheriting Classes with Constructors

When you create a subclass that inherits from a superclass, the subclass also inherits the superclass constructor. You can use the super keyword to call the superclass constructor from the subclass constructor. Here's an example:

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name.');
  }
}

class Student extends Person {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  void sayMajor() {
    print('My major is $major.');
  }
}
```

In this example, we have a Person class with a constructor that takes a name and age parameter. We also have a Student class that extends Person and adds a major property. The Student class has its own constructor that takes a name, age, and major parameter. In the Student constructor, we call the superclass constructor using super(name, age) to set the name and age properties of the Person class.

_An Example Image_

<img src="https://raw.githubusercontent.com/Muzammil-Bilwani/dart-flutter-tutorial/main/week_four/inheritance.png"/>

### Exercise

#### Exercise 1

- [ ] Create a class named `Shape` with a `color` property and a `calculateArea()` method. The `calculateArea()` method should print "Shape area is calculated.".
- [ ] Create a subclass named `Rectangle` that extends `Shape`. The `Rectangle` class should have a `width` and `height` property. The `Rectangle` class should override the `calculateArea()` method to calculate the area of the rectangle.
- [ ] Create a subclass named `Circle` that extends `Shape`. The `Circle` class should have a `radius` property. The `Circle` class should override the `calculateArea()` method to calculate the area of the circle.
- [ ] Create a `main()` function and create a `Rectangle` and `Circle` object. Call the `calculateArea()` method on both objects.

#### Practice Questions

- [ ] Create a _Vehicle_ class with `brand`, `model`, and `year` properties, and a method called `drive()` that prints a message indicating that the vehicle is being driven. Then create a _Car_ class that inherits from _Vehicle_ and has a `numDoors` property. Override the `drive()` method in the _Car_ class to print a message that includes the number of doors.

- [ ] Create a _BankAccount_ class with balance and accountNumber properties, and methods called `deposit()` and `withdraw()` that modify the balance property. Then create a _CheckingAccount_ class that inherits from _BankAccount_ and has a `transactionLimit` property. Override the `withdraw()` method in the _CheckingAccount_ class to check if the withdrawal amount is within the transaction limit before modifying the balance property.

- [ ] Create a _Person_ class with `firstName` and `lastName` properties, and a method called `fullName()` that returns the full name of the person. Then create a _Student_ class that inherits from _Person_ and has a major property. Override the `fullName()` method in the Student class to include the major in the full name.
