void main() {
  String text = "BANO QABIL";

  print("Text Before Reversing: $text");

  // text length -> 9
  // text length - 1 -> 8
  for (var i = text.length - 1; i >= 0; i--) {
    print(text[i]);
  }
}
