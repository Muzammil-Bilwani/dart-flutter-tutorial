import 'Movie.dart';
import 'Person.dart';

class User extends Person {
  final String phone;
  User(String name, String gender, this.phone) : super(name, gender);

  List<Movie> favoriteMovies = [];
}
