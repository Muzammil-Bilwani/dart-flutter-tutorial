void main() {
  print("Grocery Bill");
  print("============");
  double ricePrice = 2.99;
  double anotherRicePrice = 1.99;
  double beansPrice = 3.99;
  double breadPrice = 2.49;

  int riceQuantity = 2;
  int beansQuantity = 3;
  int breadQuantity = 2;

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
