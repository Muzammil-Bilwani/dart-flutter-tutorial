### Week 3 - Object-Oriented Programming - Introduction

- Introduction to Classes and Objects
- Introduction to Class Creation and Instance Variables
- Adding Methods to Classes
- Introduction to Constructors - Part 1
- Named and Sugar Syntactic Constructors - Part 2
- Setters and Getters

<br/>

<img src="https://a5theory.com/wp-content/uploads/2017/05/class-object.png" style="border-radius:10px" />

<br/>

#### Dart - Introduction to Classes and Objects, Introduction to Class Creation and Instance Variable and Adding Methods to Classes

In Dart, a class is a blueprint for creating objects. An object is an instance of a class that has its own set of properties and methods.

Let's create a simple class in Dart that represents a person. We'll give the class a name, age, and gender property. We'll also give it a method that prints out the person's information.

```
class Person {
  String name;
  int age;
  String gender;

  Person(this.name, this.age, this.gender);

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Gender: $gender");
  }
}
```

In this example, we've created a class called Person. It has three properties: name, age, and gender. We've also created a constructor that takes three arguments and assigns them to the corresponding properties. Finally, we've created a method called printInfo that prints out the person's information.

Now that we have a class, we can create objects from it. Let's create a few Person objects and call their printInfo method.

```
void main() {
  var person1 = Person("John", 30, "Male");
  var person2 = Person("Jane", 25, "Female");

  person1.printInfo();
  person2.printInfo();
}
```

In this example, we've created two Person objects: person1 and person2. We've passed in arguments to the constructor to set the properties of each object. Finally, we've called the printInfo method on each object to print out their information.

Output:

Name: John
Age: 30
Gender: Male
Name: Jane
Age: 25
Gender: Female

That's the basics of classes and objects in Dart! Keep in mind that this is just a simple example, and there's a lot more you can do with classes and objects in Dart.

#### Introduction to Constructors and Named and Sugar Syntactic Constructors

Constructors in Dart are special methods that are used to create and initialize objects of a class. Constructors can be used to set the initial values of the properties of an object when it is created. In this section, we'll look at different types of constructors in Dart.

1. Default Constructor
   The default constructor in Dart is used to create an object of a class without passing any arguments. If you do not explicitly define a constructor for a class, Dart provides a default constructor.

```
class Person {
  String name;
  int age;

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  var person = Person();
  person.name = "John";
  person.age = 30;
  person.printInfo();
}
```

In this example, we have a Person class with two properties: name and age. We have not defined any constructors explicitly, so Dart provides a default constructor. We create an object of the Person class by calling the default constructor with Person(). We then set the values of the name and age properties using dot notation, and finally, we call the printInfo method to print the person's information.

2. Parameterized Constructor
   A parameterized constructor is used to create an object of a class by passing arguments to the constructor.

```
class Person {
  String name;
  int age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  var person = Person("John", 30);
  person.printInfo();
}

```

In this example, we have a Person class with two properties: name and age. We have defined a parameterized constructor that takes two arguments and assigns them to the name and age properties. We create an object of the Person class by calling the constructor with Person("John", 30). We then call the printInfo method to print the person's information.

3. Named Constructor
   A named constructor is used to create an object of a class using a custom name. Named constructors are useful when you want to create objects in different ways.

```
class Person {
  String name;
  int age;

  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
  }

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  var map = {"name": "John", "age": 30};
  var person = Person.fromMap(map);
  person.printInfo();
}
```

In this example, we have a Person class with two properties: name and age. We have defined a named constructor called fromMap that takes a Map object as an argument and assigns the values of the name and age properties from the Map. We create an object of the Person class using the fromMap constructor with Person.fromMap(map). We then call the printInfo method to print the person's information.

4. Sugar Syntactic Constructor
   Sugar Syntactic Constructors is a shorthand way of writing constructors that can be used to create an object of a class in a more concise way.

```
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  var person = Person("John", 30);
  person.printInfo();
}

```

### Setters and Getters

In Dart, setters and getters are special methods that allow you to control access to the properties of an object. Setters and getters are useful when you want to restrict access to a property, compute the value of a property dynamically, or when you want to perform some other action when a property is accessed or modified. In this section, we'll look at how to create setters and getters in Dart.

1. Getters
   A getter is a method that is used to retrieve the value of a property. In Dart, you can create a getter by defining a method with the get keyword followed by the name of the property you want to get.

```
class Person {
  String _name;
  int _age;

  String get name {
    return _name;
  }

  int get age {
    return _age;
  }
}

void main() {
  var person = Person();
  person._name = "John";
  person._age = 30;

  print("Name: ${person.name}");
  print("Age: ${person.age}");
}
```

In this example, we have a Person class with two private properties: \_name and \_age. We have defined two getters for these properties, name and age. We create an object of the Person class and set the values of the private properties using dot notation. We then print the values of the properties using the getters.

2. Setters
   A setter is a method that is used to set the value of a property. In Dart, you can create a setter by defining a method with the set keyword followed by the name of the property you want to set.

```
class Person {
  String _name;
  int _age;

  set name(String name) {
    _name = name;
  }

  set age(int age) {
    _age = age;
  }
}

void main() {
  var person = Person();
  person.name = "John";
  person.age = 30;

  print("Name: ${person.name}");
  print("Age: ${person.age}");
}
```

In this example, we have a Person class with two private properties: \_name and \_age. We have defined two setters for these properties, name and age. We create an object of the Person class and set the values of the private properties using the setters. We then print the values of the properties using the getters.

_Using Getters and Setters_

You can use getters and setters to perform additional actions when a property is accessed or modified. For example, you can use a setter to validate the value of a property before it is set.

```
class Person {
  String _name;
  int _age;

  set age(int age) {
    if (age < 0) {
      throw Exception("Age cannot be negative.");
    }
    _age = age;
  }

  String get name {
    return _name.toUpperCase();
  }
}

void main() {
  var person = Person();
  person.name = "John";
  person.age = -30; // Throws an exception

  print("Name: ${person.name}");
  print("Age: ${person.age}");
}
```

In this example, we have a Person class with two private properties: \_name and \_age. We have defined a setter for the age property that validates that the age is not negative before setting the value. We have also defined a getter for the name property that returns the name in uppercase. We create an object of the Person class and set the values of the private properties using the setters. We then print the values of the properties using the getters.
