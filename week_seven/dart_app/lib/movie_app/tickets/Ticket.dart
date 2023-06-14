import 'package:dart_app/model/movie.dart';
import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  final Movie movie;

  const Ticket({
    Key? key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(
          right: MediaQuery.of(context).size.width / 2, holeRadius: 30),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(78, 80, 98, 1),
                Color.fromRGBO(49, 51, 64, 1),
                Color.fromRGBO(18, 20, 28, 1.0)
              ]),
        ),
        padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 160,
        child: Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                movie.imageUrl,
              )),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                movie.title,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    movie.imdbRating.toString(),
                    style: const TextStyle(color: Colors.yellow, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Some Randome Text",
                  style: const TextStyle(color: Colors.white, fontSize: 14)),
            ],
          )
        ]),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  TicketClipper({required this.right, required this.holeRadius});

  final double right;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - right - holeRadius, 0.0)
      ..arcToPoint(
        Offset(size.width - right, 0),
        clockwise: false,
        radius: Radius.circular(1),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - right, size.height)
      ..arcToPoint(
        Offset(size.width - right - holeRadius, size.height),
        clockwise: false,
        radius: Radius.circular(1),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(TicketClipper oldClipper) => true;
}
