import 'Person.dart';

class Actor extends Person {
  final bool isLead;

  Actor(String name, String gender, this.isLead) : super(name, gender);

  @override
  String toString() {
    return "$name";
  }

  static List<Actor> createSeedData() {
    Actor actor1 = Actor("Tom Cruise", Gender.Male.toString(), true);
    Actor actor2 = Actor("Johnny", Gender.Male.toString(), true);
    Actor actor3 = Actor("Deepika", Gender.Female.toString(), true);
    Actor actor4 = Actor("Allu Arjun", Gender.Male.toString(), true);

    return [
      actor1,
      actor2,
    ];
  }
}
