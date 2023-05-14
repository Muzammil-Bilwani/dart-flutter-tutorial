class Bill {
  double totalAmount;
  double tipAmount;
  double noOfPeople;

  Bill(
      {required this.totalAmount,
      required this.tipAmount,
      required this.noOfPeople});

  String getAmountPerPerson() {
    return ((totalAmount + tipAmount) / noOfPeople).toStringAsFixed(2);
  }

  String getTipAmountPerPerson() {
    return (tipAmount / noOfPeople).toStringAsFixed(2);
  }

  String getBillAmountPerPerson() {
    return (totalAmount / noOfPeople).toStringAsFixed(2);
  }
}
