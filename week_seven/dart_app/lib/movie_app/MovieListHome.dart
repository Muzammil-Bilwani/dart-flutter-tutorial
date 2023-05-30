import 'package:dart_app/movie_app/MovieList.dart';
import 'package:dart_app/movie_app/Topbar.dart';
import 'package:flutter/material.dart';

class MovieListHome extends StatelessWidget {
  const MovieListHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(padding: EdgeInsets.all(20.0), child: TopBar()),
        MovieList()
      ],
    );
  }
}
