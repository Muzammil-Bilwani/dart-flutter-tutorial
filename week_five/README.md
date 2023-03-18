## Introduction to Abstract and Interface Classes

Abstract and interface classes are two important concepts in object-oriented programming. Both of them are used to define a contract, or a set of rules, that a class must follow in order to implement certain behavior.

#### Abstract Classes

An abstract class is a class that cannot be instantiated directly. Instead, it is meant to be extended by other classes that provide the missing functionality. Abstract classes can contain both concrete and abstract methods.

#### Interface Classes

An interface class is a contract that defines a set of methods that a class must implement in order to satisfy the contract. Unlike abstract classes, interfaces cannot contain any concrete methods. Instead, they only contain method signatures.

### Abstract and Interface Classes in Dart - Creation

In Dart, abstract and interface classes are defined using the abstract keyword. Here is an example of an abstract class in Dart:

```dart
abstract class Animal {
  void makeSound();

  void eat() {
    print('The animal is eating.');
  }
}
```

This abstract class defines the `makeSound()` method as an abstract method, which means that any class that extends this abstract class must provide an implementation for this method. The `eat()` method is a concrete method, which means that it has a default implementation, but it can be overridden by any subclass.

Here is an example of an interface class in Dart:

```dart
abstract class Flyable {
  void fly();
}
```

This interface class defines the `fly()` method as an abstract method. Any class that implements this interface must provide an implementation for this method.

Here is an example of a class that extends the Animal abstract class and implements the Flyable interface:

```dart
class Bird extends Animal implements Flyable {
  @override
  void makeSound() {
    print('Chirp chirp!');
  }

  @override
  void fly() {
    print('The bird is flying.');
  }
}
```

This Bird class provides an implementation for the `makeSound()` method, as required by the Animal abstract class. It also implements the Flyable interface by providing an implementation for the `fly()` method.

Using abstract and interface classes can help to make your code more modular and extensible, by defining a clear set of rules that classes must follow in order to implement certain behavior.

Example

<img src="https://www.testingdocs.com/wp-content/uploads/Abstract-class-vs-Concreate-Classes.png"/>

<br/>
<br/>
<br/>

<img src="https://simplesnippets.tech/wp-content/uploads/2018/05/abstract-class-in-java-example1.jpg"/>

### Abstract and Interface Classes in Dart - Use Cases

Abstract and interface classes are used in many different situations. Here are some examples of when you might want to use abstract and interface classes:

### Use Case : Defining a contract for a set of related classes

One common use case for abstract classes is to define a contract, or a set of rules, that a set of related classes must follow. For example, imagine that you are building a game that involves various types of enemies, each with its own behavior. You might define an abstract class called Enemy that contains a set of methods that each enemy class must implement, such as move(), attack(), and die(). Each specific enemy class can then extend this abstract class and provide its own implementation of these methods.
