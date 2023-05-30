import 'package:dart_app/model/movie.dart';
import 'package:dart_app/movie_app/MovieItem.dart';
import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  List<Movie> movies = [];

  @override
  void initState() {
    Movie.buildData();
    movies = Movie.movies;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) => MovieItem(
                  movie: movies[index],
                ))));
  }
}
