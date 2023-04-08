enum Gender { Male, Female }

class Person {
  final String name;
  final String gender;
  Person(this.name, this.gender);

  @override
  String toString() {
    return "$name";
  }
}
