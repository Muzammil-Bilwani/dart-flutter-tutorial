class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

void main() {
  List<Person> peopleList = [
    Person('John', 20),
    Person('Jane', 21),
    Person('Jack', 22),
    Person('Jill', 23),
    Person('Jen', 24),
  ];

  Map<String, int> peopleMap = {
    "Huzaifa": 29,
    "Ali": 30,
    "Ahmed": 31,
    "Sami": 32,
    "Saeed": 33,
  };

  printNames(peopleList, peopleMap);

  peopleList.add(Person('Sabba', 24));
  peopleMap.addAll({"Saad": 19});

  peopleList.removeWhere((element) => element.name == 'Jen');
  peopleMap.removeWhere((key, value) => key == 'Sami');
  printNames(peopleList, peopleMap);
}

void printNames(List<Person> peopleList, Map<String, int> peopleMap) {
  // 1. Print the names of all the people
  peopleList.forEach((person) => print(person.name));

  // 2. Print the ages of all the people
  for (var person in peopleMap.entries) {
    print(person.key);
  }

  print("----------------");
}
