class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    print('$name is eating');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  void bark() {
    print('$name is  barking at the age of $age and breed $breed');
  }

  void eat() {
    print('$name is eating dog food');
  }
}

class Cat extends Animal {
  String breed;

  Cat(String name, int age, this.breed) : super(name, age);

  void meow() {
    print('$name is  meowing at the age of $age and breed $breed');
  }
}

class Human {
  String name;
  int age;

  Human(this.name, this.age);

  void eat() {
    print('$name is eating');
  }
}

class Student extends Human {
  Student(String name, int age) : super(name, age);

  void study() {
    print('$name is studying');
  }
}

class Dancer extends Human {
  Dancer(String name, int age) : super(name, age);

  void dance() {
    print('$name is dancing');
  }
}

class Teacher extends Human {
  Teacher(String name, int age) : super(name, age);

  void teach() {
    print('$name is teaching');
  }
}

class SchoolTeacher extends Teacher {
  SchoolTeacher(String name, int age) : super(name, age);

  void teach() {
    print('$name is teaching in school');
  }
}

void main() {
  Dog dog = Dog("Max", 2, "German Shepherd");
  dog.eat();
  dog.bark();

  Cat cat = Cat("Tom", 1, "Persian");
  cat.eat();
  cat.meow();
}
