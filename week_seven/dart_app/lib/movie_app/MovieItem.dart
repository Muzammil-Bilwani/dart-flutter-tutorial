import 'package:dart_app/model/movie.dart';
import 'package:dart_app/movie_app/Rating.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/movie/details', arguments: movie);
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.all(12),
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(32.0),
                  child: Image.network(movie.imageUrl,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover)),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.black.withOpacity(0.5),
                        ],
                        stops: const [
                          0.0,
                          1.0
                        ])),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Rating(rating: movie.imdbRating),
              ),
            ])));
  }
}
