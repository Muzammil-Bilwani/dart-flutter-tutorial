import 'dart:math';

class Quote {
  String text;
  String author;

  static List<Quote> quotes = [
    Quote(
        text: "What would life be if we had no courage to attempt anything?",
        author: "Vincent Van Gogh"),
    Quote(
        text:
            "The greatest glory in living lies not in never falling, but in rising every time we fall.",
        author: "Nelson Mandela"),
    Quote(
        text: "The way to get started is to quit talking and begin doing.",
        author: "Walt Disney"),
    Quote(
        text:
            "If life were predictable it would cease to be life, and be without flavor.",
        author: "Eleanor Roosevelt"),
  ];

  Quote({required this.text, required this.author});

  static getRandomQuote() {
    Random random = Random();
    int randomNumber = random.nextInt(quotes.length);
    return quotes[randomNumber];
  }

  static getRandomNumber() {
    Random random = Random();
    int randomNumber = random.nextInt(255);
    return randomNumber;
  }
}
