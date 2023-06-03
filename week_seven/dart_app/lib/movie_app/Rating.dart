import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key, required this.rating}) : super(key: key);
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(243, 181, 0, 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          'IMDB ${rating.toString()}',
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ));
  }
}
