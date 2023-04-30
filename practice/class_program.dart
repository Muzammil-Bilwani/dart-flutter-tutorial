void main() {
  String decodedString = "2016";
  String encodeValue = encodeString(decodedString);
  print(encodeValue);
}

String encodeString(String decodedString) {
  String encodeValue = "";
  for (int index = 0; index < decodedString.length; index++) {
    String firstValue = decodedString[index];
    int times = 1;
    while (index + 1 < decodedString.length &&
        firstValue == decodedString[index + 1]) {
      firstValue = decodedString[index + 1];
      times++;
      index++;
    }
    encodeValue += times.toString() + firstValue;
  }
  return encodeValue;
}
