import 'package:dart_app/model/movie.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
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
            child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(243, 181, 0, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'IMDB ${movie.imdbRating.toString()}',
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
        ]));
  }
}
