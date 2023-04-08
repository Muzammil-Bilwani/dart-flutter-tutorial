import 'dart:io';

import 'classes/Movie.dart';

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
        for (Movie movie in movies) {
          print(movie);
        }
        break;
      case "2":
        print("Here are your favorite movies:");
        break;
      case "3":
        print("What movie would you like to add?");
        break;
      case "4":
        print("What movie would you like to remove?");
        break;
      case "5":
        print("What is your phone number?");
        break;
      case "6":
        print("Goodbye!");
        break;
      default:
        print("Invalid choice");
    }
  } while (choice != "5");
}
