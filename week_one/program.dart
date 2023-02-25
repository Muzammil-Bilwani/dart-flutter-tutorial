import 'dart:io';

void main() {
  print("Grocery Bill");
  print("============");
  const double ricePrice = 2.99;
  const double anotherRicePrice = 1.99;
  const double beansPrice = 3.99;
  const double breadPrice = 2.49;

  print("Enter Rice Quantity: ");
  String riceInput = stdin.readLineSync() as String;
  final int riceQuantity = int.parse(riceInput);
  if (riceQuantity < 0) {
    print("Invalid quantity");
    return;
  }
  print("Enter Bean Quantity: ");
  String beanInput = stdin.readLineSync() as String;
  int beansQuantity = int.parse(beanInput);

  if (beansQuantity == 4) {
    print("Thank you for buying 4 beans");
  }
  print("Enter Bread Quantity: ");
  String breadInput = stdin.readLineSync() as String;
  int breadQuantity = int.parse(breadInput);

  if (breadQuantity >= 5) {
    print("You have bought more than 4 breads and get 1 free");
    breadQuantity = breadQuantity + 1;
  }

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
