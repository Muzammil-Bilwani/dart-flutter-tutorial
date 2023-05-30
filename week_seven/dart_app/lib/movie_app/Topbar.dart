import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello, Hamza",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Book your Favorite Movie now",
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
      const CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage("https://i.pravatar.cc/300")),
    ]);
  }
}
