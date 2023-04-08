import 'Actor.dart';
import 'Person.dart';

class Movie {
  final String title;
  final String genre;
  final List<Actor> actors;
  final List<Person> directors;
  final double duration;
  final String industry;
  final double rating;

  Movie(this.title, this.genre, this.actors, this.directors, this.duration,
      this.industry, this.rating);

  @override
  String toString() {
    return '''
              Movie: $title - 
              Genre: $genre - 
              Actors: $actors - 
              Directors: $directors - 
              Duration: $duration hours - 
              Industry: $industry - 
              Rating: $rating/5
            ''';
  }

  static List<Person> createDirectors() {
    Person director1 = Person("Tuuny", Gender.Male.toString());
    Person director2 = Person("RR", Gender.Male.toString());
    Person director3 = Person("Ashley", Gender.Female.toString());

    return [director1, director2, director3];
  }

  static List<Movie> createSeedData() {
    Movie movie1 = Movie("The Secret Life of Pets 3", "Animation",
        Actor.createSeedData(), createDirectors(), 1.5, "Hollywood", 4.3);
    Movie movie2 = Movie("The Lost City", "Adventure", Actor.createSeedData(),
        createDirectors(), 2.0, "Hollywood", 4.6);
    Movie movie3 = Movie("The Devil's Advocate 2", "Thriller",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.7);
    Movie movie4 = Movie("Finding Atlantis", "Action", Actor.createSeedData(),
        createDirectors(), 2.5, "Hollywood", 4.0);
    Movie movie5 = Movie("The Time Traveler's Wife", "Romance",
        Actor.createSeedData(), createDirectors(), 1.5, "Hollywood", 4.4);
    Movie movie6 = Movie("Mission Impossible 6", "Action",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.5);
    Movie movie7 = Movie("The Curse of the Mummy's Tomb", "Horror",
        Actor.createSeedData(), createDirectors(), 2.0, "Hollywood", 4.2);
    Movie movie8 = Movie("A Journey to the Center of the Earth", "Adventure",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.8);
    Movie movie9 = Movie("The Invisible Man", "Horror", Actor.createSeedData(),
        createDirectors(), 2.0, "Hollywood", 4.1);
    Movie movie10 = Movie("The Lost Treasure of the Amazon", "Adventure",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.6);
    Movie movie11 = Movie("The Time Machine", "Science Fiction",
        Actor.createSeedData(), createDirectors(), 2.0, "Hollywood", 4.4);
    Movie movie12 = Movie("The Haunted Mansion", "Horror",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.2);
    Movie movie13 = Movie("Journey to the Center of the Earth 2", "Adventure",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.7);
    Movie movie14 = Movie("The Lost Island", "Action", Actor.createSeedData(),
        createDirectors(), 2.0, "Hollywood", 4.3);
    Movie movie15 = Movie("The Invisible Man 2", "Horror",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.1);
    Movie movie16 = Movie("Escape from the Bermuda Triangle", "Action",
        Actor.createSeedData(), createDirectors(), 2.0, "Hollywood", 4.4);
    Movie movie17 = Movie("Journey to the Center of the Earth 3", "Adventure",
        Actor.createSeedData(), createDirectors(), 2.5, "Hollywood", 4.7);
    Movie movie18 = Movie("The Time Traveler's Husband", "Romance",
        Actor.createSeedData(), createDirectors(), 2.0, "Hollywood", 4.5);

    Movie movie19 = Movie("Dilwale Dulhania Le Jayenge", "Romance",
        Actor.createSeedData(), createDirectors(), 2.0, "Bollywood", 4.5);
    Movie movie20 = Movie("Bahubali: The Beginning", "Action",
        Actor.createSeedData(), createDirectors(), 2.5, "Bollywood", 4.8);
    Movie movie21 = Movie("3 Idiots", "Comedy", Actor.createSeedData(),
        createDirectors(), 2.0, "Bollywood", 4.6);
    Movie movie22 = Movie("Lagaan", "Drama", Actor.createSeedData(),
        createDirectors(), 2.5, "Bollywood", 4.7);
    Movie movie25 = Movie("Kabhi Khushi Kabhie Gham", "Romance",
        Actor.createSeedData(), createDirectors(), 1.5, "Bollywood", 4.3);
    Movie movie26 = Movie("Padmaavat", "Drama", Actor.createSeedData(),
        createDirectors(), 2.5, "Bollywood", 4.4);
    Movie movie27 = Movie("Gully Boy", "Drama", Actor.createSeedData(),
        createDirectors(), 2.0, "Bollywood", 4.5);
    Movie movie28 = Movie("My Name is Khan", "Drama", Actor.createSeedData(),
        createDirectors(), 2.5, "Bollywood", 4.2);
    Movie movie29 = Movie("Dangal", "Drama", Actor.createSeedData(),
        createDirectors(), 2.0, "Bollywood", 4.9);
    Movie movie30 = Movie("Baahubali 2: The Conclusion", "Action",
        Actor.createSeedData(), createDirectors(), 2.5, "Bollywood", 4.8);

    return [
      movie1,
      movie2,
      movie3,
      movie4,
      movie5,
      movie6,
      movie7,
      movie8,
      movie9,
      movie10,
      movie11,
      movie12,
      movie13,
      movie14,
      movie15,
      movie16,
      movie17,
      movie18,
      movie19,
      movie20,
      movie21,
      movie22,
      movie25,
      movie26,
      movie27,
      movie28,
      movie29,
      movie30
    ];
  }
}
