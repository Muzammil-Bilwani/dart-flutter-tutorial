## Week 1 - Intro to Dart and programming languages

- Dart - Coding Style and Naming Convention
- Dart - Declaring variables
- Dart - Types and Assigning Types to Variables
- Dart - Numbers - Integers and Doubles
- Dart - Booleans
- Dart - Const and Final Keywords
- Dart - Concatenation
- Dart Operators - Arithmetic
- Equality and Relational Operators in Dart

---

### Some Explanations

#### Dart - Coding Style and Naming Convention

- Dart is a programming language developed by Google. It is a general-purpose programming language that is used to build web, server, and mobile applications. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript. It supports interfaces, mixins, abstract classes, reified generics, and type inference.

#### Dart - Declaring variables - String

- A variable is a container for a value, which can be a number, text, or other data types. In Dart, you can declare a variable using the var keyword. The var keyword tells the compiler that the variable can hold any type of value.

- You can also explicitly declare the type of the variable. The following example declares a variable named name and assigns it a value of "John":

```dart
String name = "John";
```

Read more here:

- [Dart - Declaring variables - String](https://www.tutorialspoint.com/dart_programming/dart_programming_variables.htm)
- [Dart - Variables](https://dart.dev/guides/language/language-tour#variables)

#### Dart - Types and Assigning Types to Variables

Dart is a modern programming language that is often used for developing mobile and web applications. Dart is a strongly-typed language, which means that every variable and expression has a specific type that is checked at compile-time.

Dart has several built-in types, including:

- `int`: used to represent integer values, such as 1, 2, 3, etc.
- `double`: used to represent floating-point values, such as 3.14 or 2.5.
- `bool`: used to represent boolean values, which can be either true or false.
- `String`: used to represent text or string values, such as "Hello, world!".
- `List`: used to represent an ordered collection of objects.
- `Map`: used to represent a collection of key-value pairs.

To assign a type to a variable in Dart, you can use the `var` keyword followed by the variable name and a colon, and then the type of the variable. For example, to create a variable of type `int` and assign it the value `5`, you could write:

```dart
var myNumber: int = 5;
```

You can also omit the type and let Dart infer it based on the value assigned to the variable. For example, if you assign a value of `5.0` to a variable without specifying a type, Dart will infer that the type is `double`. Here's an example:

```dart
var myDouble = 5.0;
```

In Dart, you can also use type annotations to make your code more explicit and easier to understand. For example, you could write:

```dart
int myNumber = 5;
double myDouble = 3.14;
String myString = "Hello, world!";
bool myBool = true;
List<int> myNumbers = [1, 2, 3];
Map<String, int> myMap = {"one": 1, "two": 2, "three": 3};
```

In the example above, `myNumber` is an `int`, `myDouble` is a `double`, `myString` is a `String`, `myBool` is a `bool`, `myNumbers` is a `List` of `int` values, and `myMap` is a `Map` with keys of type `String` and values of type `int`.

By using types and type annotations, you can make your code more robust and less prone to errors, and also make it easier for others to understand and maintain your code.
