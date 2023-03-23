# Week 6: Data Structures and Collections in dart

- Introduction to Collections
- Creating Lists and Iterating through Them
- Creating a List with a Person-Type Object
- Introduction to Maps

## Introduction to Collections

Collections in dart are used to hold and manage groups of related data. dart provides three types of collections: Lists, Maps, and Sets.

### Creating Lists and Iterating through Them

A List in dart is an ordered collection of objects. To create a List, you can use the List class constructor, followed by the elements you want to add to the List, like this:

```dart
List<String> names = ['Alice', 'Bob', 'Charlie'];
```

To access an element in the List, you can use the index operator ([]), like this:

```dart
print(names[0]); // Output: Alice
```

You can also iterate through a List using a for loop, like this:

```dart
for (var name in names) {
    print(name);
}
```

### Creating a List with a Person-Type Object

In dart, you can create a List that contains objects of a custom class. For example, let's say you have a Person class:

```dart
class Person {
    final String name;
    final int age;

    Person(this.name, this.age);
}
```

To create a List of Person objects, you can do the following:

```dart

List<Person> people = [
    Person('Alice', 25),
    Person('Bob', 30),
    Person('Charlie', 35),
];
```

You can then access the properties of each Person object in the List using dot notation, like this:

```dart
    print(people[0].name); // Output: Alice
```

### Introduction to Maps

Maps are another important collection data structure in Dart. They allow you to associate keys with values, which can be of any type. You can think of a map as a dictionary, where each key represents a word, and each value represents the definition of that word.

Here's an example of a map in Dart:

```dart
Map<String, int> ages = {
  'Alice': 25,
  'Bob': 30,
  'Charlie': 35,
};
```

In this example, we've created a map that associates people's names (represented as strings) with their ages (represented as integers). We've declared the type of the map as Map<String, int>, which means that the keys are strings and the values are integers.

Accessing Values in a Map
You can access the value associated with a key in a map using the square bracket notation ([]). For example:

```dart
print(ages['Alice']); // Output: 25
```

Adding and Updating Values in a Map
To add a new key-value pair to a map, you can use the square bracket notation as well:

```dart
ages['David'] = 40;
```

If the key already exists in the map, assigning a new value to it will update the existing value:

```dart
ages['Alice'] = 26;
print(ages['Alice']); // Output: 26
```

Removing Values from a Map
To remove a key-value pair from a map, you can use the remove() method:

```dart
ages.remove('Bob');
```

Iterating over a Map
You can iterate over the keys or values in a map using the keys and values properties, respectively:

```dart
for (String name in ages.keys) {
  print(name);
}

for (int age in ages.values) {
  print(age);
}
```

You can also iterate over both the keys and values using the forEach() method:

```dart
ages.forEach((name, age) {
  print('$name is $age years old');
});
```

## Exercise

In this exercise, you'll create a dart program that uses a List and a Map to store and manage a list of people and their ages.

### Step 1: Create a Person Class

Create a Person class that has two properties: name and age. The name property should be a String, and the age property should be an int.

### Step 2: Create a List of People

Create a List of Person objects. Add at least three Person objects to the List.

### Step 3: Create a Map of People and Their Ages

Create a Map that associates the names of people with their ages. The keys should be Strings, and the values should be ints.

### Step 4: Print the Names of the People in the List

Iterate through the List of Person objects and print the names of the people.

### Step 5: Print the Ages of the People in the Map

Iterate through the Map of people and their ages and print the ages of the people.

### Step 6: Print the Names and Ages of the People in the List and Map

Iterate through the List of Person objects and print the names and ages of the people. Use the Map to look up the ages of the people.

### Step 7: Add a New Person to the List and Map

Add a new Person object to the List of Person objects. Add a new key-value pair to the Map of people and their ages.

### Step 8: Remove a Person from the List and Map

Remove a Person object from the List of Person objects. Remove a key-value pair from the Map of people and their ages.

### Step 9: Update the Age of a Person in the List and Map

Update the age of a Person object in the List of Person objects. Update the value of a key-value pair in the Map of people and their ages.

### Step 10: Print the Names and Ages of the People in the List and Map

Iterate through the List of Person objects and print the names and ages of the people. Use the Map to look up the ages of the people.

## Practice Coding Questions

- [ ] Create a list of integers from 1 to 100 and print out only the even numbers.
- [ ] Create a list of strings and sort it in alphabetical order.
- [ ] Create a list of maps, where each map represents a person with a name and age. Sort the list by age in ascending order.
- [ ] Create a map that associates the names of countries with their capital cities. Print out only the names of the countries.
- [ ] Create a list of integers and find the sum of all even numbers in the list.
- [ ] Create a map that associates the names of fruits with their prices. Find the most expensive fruit in the map.
- [ ] Create a list of strings and remove all duplicates from the list.
- [ ] Create a map that associates the names of programming languages with their release dates. Find the programming language with the oldest release date.
- [ ] Create a list of integers and find the product of all numbers in the list.

## Assignment Questions

- Create a list of integers and find the longest subsequence of consecutive numbers in the list.
- Create a map that associates the names of cities with their latitude and longitude coordinates. Given a starting and ending city, find the shortest distance between them (you can assume a spherical Earth).
- Create a list of maps, where each map represents a product with a name, price, and quantity. Sort the list by the total cost of each product (price x quantity) in descending order.
- Create a map that associates the names of countries with their population and area. Find the top 5 largest countries by population density (population / area).
- Create a list of strings and find the longest common subsequence (substring) among all the strings in the list.
