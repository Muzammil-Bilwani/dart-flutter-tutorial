class Mortgage {
  double homePrice;
  double downPayment;
  double interestRate;
  double lengthOfLoan;

  Mortgage(
      {required this.homePrice,
      required this.downPayment,
      required this.interestRate,
      required this.lengthOfLoan});

  static Mortgage mortgage =
      Mortgage(homePrice: 0, downPayment: 0, interestRate: 0, lengthOfLoan: 0);
}
