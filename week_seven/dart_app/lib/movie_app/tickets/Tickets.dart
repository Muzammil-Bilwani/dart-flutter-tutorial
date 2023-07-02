import 'package:dart_app/model/movie.dart';
import 'package:dart_app/movie_app/tickets/Ticket.dart';
import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Tickets",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                Icon(Icons.more_horiz_outlined, color: Colors.white)
              ],
            ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Today Tickets",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            Ticket(movie: Movie.movies[0]),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Upcoming Tickets",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            Ticket(movie: Movie.movies[1]),
          ]),
    );
  }
}
