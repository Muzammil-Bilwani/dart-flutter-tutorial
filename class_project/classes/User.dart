import 'dart:io';

import 'Movie.dart';
import 'Person.dart';

class User extends Person {
  final String phone;
  User(String name, String gender, this.phone) : super(name, gender);

  List<Movie> favoriteMovies = [];

  static List<User> users = [];

  static bool checkUser(String existingPhone) {
    List<User> users = User.users
        .where(
          (element) => existingPhone == element.phone,
        )
        .toList();
    return users.length > 0;
  }

  static registerUser() {
    print("What is your name?");
    String? name = stdin.readLineSync();
    print("Whats your gender?");
    String? gender = stdin.readLineSync();
    print("What is your phone number?");
    String? phone = stdin.readLineSync();

    if (checkUser(phone.toString())) {
      print("User already exists");
    } else {
      users.add(User(name.toString(), gender.toString(), phone.toString()));
    }
  }
}
