void main() {
  // List<String> names = ["Rehan", "Israr", "Rafay"];

  // Employee employee1 = Employee("Rehan", 27, 90000, "Male");
  // Employee employee2 = Employee("Israr", 20, 10000, "Male");
  // Employee employee3 = Employee("Rafay", 15, 1000, "Male");
  // List<Employee> employees = [employee1, employee2, employee3];
  // double totalSalary = 0;

  // for (Employee employee in employees) {
  //   totalSalary += employee.baseSalary;
  // }
  // print('Total Salary: $totalSalary');
  Person person = Person();
  print(person.name);
}

class Person {
  String name = "Rehan";
  int age = 27;

  void printInfo() {
    print('Age: $age');
  }
}

class Employee {
  String name;
  int age;
  double baseSalary;
  String gender;

  Employee(this.name, this.age, this.baseSalary, this.gender);

  void printInfo() {
    Person pr = Person();
    print('Name: $name');
  }

  double calculateBonus({
    double bonus = 1.5,
    double tax = 0.1,
  }) {
    double bonusCalculated = baseSalary * bonus;
    return bonusCalculated - (tax * bonusCalculated);
  }

  double calculateSalary() {
    return baseSalary * 12;
  }
}
