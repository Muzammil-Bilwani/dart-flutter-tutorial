import 'dart:io';

void main() {
  print("Grocery Bill");
  print("============");
  double ricePrice = 2.99;
  double anotherRicePrice = 1.99;
  double beansPrice = 3.99;
  double breadPrice = 2.49;

  print("Enter Rice Quantity: ");
  String riceInput = stdin.readLineSync() as String;
  int riceQuantity = int.parse(riceInput);
  print("Enter Bean Quantity: ");
  String beanInput = stdin.readLineSync() as String;
  int beansQuantity = int.parse(beanInput);
  print("Enter Bread Quantity: ");
  String breadInput = stdin.readLineSync() as String;
  int breadQuantity = int.parse(breadInput);

  double riceTotal = ricePrice * riceQuantity;
  double anotherRiceTotal = anotherRicePrice * riceQuantity;
  double beansTotal = beansPrice * beansQuantity;
  double breadTotal = breadPrice * breadQuantity;

  double total = riceTotal + anotherRiceTotal + beansTotal + breadTotal;

  double averageRicePrice = (ricePrice + anotherRicePrice) / 2;

  print("Rice: AED $ricePrice  x $riceQuantity = AED $riceTotal");
  print("Another Rice: AED $anotherRicePrice x $riceQuantity = AED $riceTotal");
  print("Beans: AED $beansPrice x $beansQuantity = AED $beansTotal");
  print("Bread: AED $breadPrice x $breadQuantity = AED $breadTotal");
  print("=============================================");
  print("Total: AED $total");
  print("Average rice price : AED $averageRicePrice");
}
