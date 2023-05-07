import 'package:dart_app/model/quote.dart';
import 'package:flutter/material.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({Key? key}) : super(key: key);

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  late Quote currentQuote;
  Color? currentBg = Colors.blueGrey[100];

  @override
  void initState() {
    currentQuote = Quote.getRandomQuote();
    super.initState();
  }

  Color getRandomColor() {
    return Color.fromARGB(255, Quote.getRandomNumber(), Quote.getRandomNumber(),
        Quote.getRandomNumber());
  }

  void handleButtonPress() {
    setState(() {
      currentQuote = Quote.getRandomQuote();
      currentBg = getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentBg,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text(currentQuote.text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30))),
          const Padding(padding: EdgeInsets.all(20.0)),
          SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text(currentQuote.author,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, color: Colors.blue))),
          const Padding(padding: EdgeInsets.all(20.0)),
          ElevatedButton(
              onPressed: handleButtonPress,
              child: const Text("Get me another one"))
        ],
      )),
    );
  }
}
