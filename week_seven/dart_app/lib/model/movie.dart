class Movie {
  final String title;
  final String imageUrl;
  final double imdbRating;
  final List<String> genre;
  final int playbackTime;

  Movie({
    required this.title,
    required this.imageUrl,
    required this.imdbRating,
    required this.genre,
    required this.playbackTime,
  });

  static List<Movie> movies = [];

  static buildData() {
    var jsonData = [
      {
        "title": "Inception",
        "imageUrl":
            "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg",
        "imdbRating": 8.8,
        "genre": ["Sci-Fi", "Action"],
        "playbackTime": 148
      },
      {
        "title": "The Dark Knight",
        "imageUrl":
            "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg",
        "imdbRating": 9.0,
        "genre": ["Action", "Crime", "Drama"],
        "playbackTime": 152
      },
      {
        "title": "Interstellar",
        "imageUrl":
            "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_FMjpg_UX1000_.jpg",
        "imdbRating": 8.6,
        "genre": ["Sci-Fi", "Adventure", "Drama"],
        "playbackTime": 169
      },
      {
        "title": "Dilwale Dulhania Le Jayenge",
        "imageUrl":
            "https://m.media-amazon.com/images/M/MV5BNDk3MTU5MDA3OF5BMl5BanBnXkFtZTgwODM3MzY2MzE@._V1_.jpg",
        "imdbRating": 8.1,
        "genre": ["Romance", "Drama", "Musical"],
        "playbackTime": 190
      },
      {
        "title": "Kabhi Khushi Kabhie Gham",
        "imageUrl":
            "https://m.media-amazon.com/images/M/MV5BOTQ5Nzc3NzAtMzZlMS00ZWJjLWIxMGMtNDU4ZTQ1NmNjMjc5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg",
        "imdbRating": 7.5,
        "genre": ["Drama", "Romance"],
        "playbackTime": 210
      },
      {
        "title": "The Shawshank Redemption",
        "imageUrl":
            "https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg",
        "imdbRating": 9.3,
        "genre": ["Drama"],
        "playbackTime": 142
      }
    ];

    for (var item in jsonData) {
      movies.add(Movie(
          title: item["title"] as String,
          imageUrl: item["imageUrl"] as String,
          imdbRating: item["imdbRating"] as double,
          genre: item["genre"] as List<String>,
          playbackTime: item["playbackTime"] as int));
    }
  }
}
