import 'package:dart_app/model/movie.dart';
import 'package:dart_app/movie_app/Rating.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(78, 80, 98, 1),
              Color.fromRGBO(49, 51, 64, 1),
              Color.fromRGBO(18, 20, 28, 1.0)
            ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Image.network(movie.imageUrl,
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(0.0),
                                  Colors.black.withOpacity(0.2),
                                ],
                                stops: const [
                                  0.0,
                                  1.0
                                ])),
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Rating(rating: movie.imdbRating),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 0),
                            child: Chip(
                              backgroundColor: Colors.black,
                              label: Text('${movie.getPlayBackTime()}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  )),
                            ))
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        child: Wrap(
                          spacing: 8,
                          children: movie.genre
                              .map((e) => Chip(label: Text(e)))
                              .toList(),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(movie.title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold))),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra.Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. Duis a arcu convallis, gravida purus eget, mollis diam. ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal))),
                  ]),
            )));
  }
}
