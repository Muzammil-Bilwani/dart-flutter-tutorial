import 'package:flutter/material.dart';
import 'package:mortage_calculator/pages/Map.dart';

class Quacks extends StatefulWidget {
  const Quacks({super.key});

  @override
  State<Quacks> createState() => _QuacksState();
}

class _QuacksState extends State<Quacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quacks"),
        ),
        body: Stack(
          children: [MapSample(), Text("Quacks")],
        ));
  }
}
