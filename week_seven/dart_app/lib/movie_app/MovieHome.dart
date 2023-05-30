import 'package:dart_app/movie_app/MovieListHome.dart';
import 'package:flutter/material.dart';

class MovieHome extends StatefulWidget {
  const MovieHome({Key? key}) : super(key: key);

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  List<Widget> tabBar = [
    const MovieListHome(),
    const Text("WORK IN PROGRESS"),
    const Text("WORK IN PROGRESS"),
    const Text("WORK IN PROGRESS")
  ];
  int currentIndex = 0;

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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromRGBO(49, 51, 64, 1),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '.',
              ),
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(child: tabBar[currentIndex])),
    );
  }
}
