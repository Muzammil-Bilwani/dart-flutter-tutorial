import 'dart:io';

import 'classes/Movie.dart';
import 'classes/User.dart';

void main() {
  List<Movie> movies = Movie.createSeedData();
  print("Welcome to the Movie App");
  String? choice;
  do {
    print("What would you like to do?");
    print("1. View all movies");
    print("2. View your favorite movies");
    print("3. Add a movie to your favorites");
    print("4. Remove a movie from your favorites");
    print("5. Register your phone number");
    print("6. Exit");

    choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        print("Here are all the movies:");
        movies.forEach((element) {
          print(element);
        });
        break;
      case "2":
        String phone = askPhoneNumber();
        if (User.checkUser(phone)) {
          User user =
              User.users.firstWhere((element) => element.phone == phone);
          print("Here are your favorite movies:");
          user.favoriteMovies.forEach((element) {
            print(element);
          });
        } else {
          print("User not found");
        }
        break;
      case "3":
        String phone = askPhoneNumber();
        if (User.checkUser(phone)) {
          User user =
              User.users.firstWhere((element) => element.phone == phone);
          print("Here are all the movies:");
          movies.forEach((element) {
            print(element);
          });
          print("Which movie would you like to add to your favorites?");
          String? movieName = stdin.readLineSync();
          Movie movie =
              movies.firstWhere((element) => element.title == movieName);
          user.favoriteMovies.add(movie);
        } else {
          print("User not found");
        }

        break;
      case "4":
        String phone = askPhoneNumber();
        if (User.checkUser(phone)) {
          User user =
              User.users.firstWhere((element) => element.phone == phone);
          print("Here are your favorite movies:");
          user.favoriteMovies.forEach((element) {
            print(element);
          });
          print("Which movie would you like to remove from your favorites?");
          String? movieName = stdin.readLineSync();
          Movie movie = user.favoriteMovies
              .firstWhere((element) => element.title == movieName);
          user.favoriteMovies.remove(movie);
        } else {
          print("User not found");
        }
        break;
      case "5":
        User.registerUser();
        break;
      case "6":
        print("Goodbye!");
        break;
      default:
        print("Invalid choice. Please try again.");
    }
  } while (choice != "6");
}

askPhoneNumber() {
  print("What is your phone number?");
  String? phoneNumber = stdin.readLineSync();
  if (phoneNumber != null) {
    return phoneNumber;
  } else {
    print("Invalid phone number. Please try again.");
    askPhoneNumber();
  }
}
