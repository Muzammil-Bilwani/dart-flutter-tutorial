class Bank {
  List<BankAccount> accounts = [];

  void addAccount(BankAccount account) {
    BankAccount? acc = accounts.firstWhere(
      (element) => element.accountNumber == account.accountNumber,
      orElse: () => null as BankAccount,
    );

    accounts.add(account);
  }

  bool removeAccount(String accountNumber) {
    for (BankAccount loopAccount in accounts) {
      if (loopAccount.accountNumber == accountNumber) {
        accounts.remove(loopAccount);
        return true;
      }
    }
    return false;
  }

  BankAccount highestBalanceAccount() {
    BankAccount tempAccount = accounts[0];
    for (BankAccount loopAccount in accounts) {
      if (loopAccount.accountBalance > tempAccount.accountBalance) {
        tempAccount = loopAccount;
      }
    }
    return tempAccount;
  }
}

class BankAccount {
  String accountNumber;
  String accountName;
  double accountBalance;
  BankAccount(this.accountNumber, this.accountName, this.accountBalance);
}

void main() {
  Bank hamamraBank = Bank();
  hamamraBank.addAccount(BankAccount('123456789', 'Adeel', 1000));
  hamamraBank.addAccount(BankAccount('987654321', 'Jaffer', 2000));
  hamamraBank.addAccount(BankAccount('987654321', 'Jaffer', 2000));
  hamamraBank.addAccount(BankAccount('76767', 'Junaid', 100));

  bool isRemoved = hamamraBank.removeAccount('76767');
  if (!isRemoved) {
    print('Account not found');
  }

  BankAccount highestBalanceAccount = hamamraBank.highestBalanceAccount();
  print('Highest balance account is ${highestBalanceAccount.accountName}');
}
