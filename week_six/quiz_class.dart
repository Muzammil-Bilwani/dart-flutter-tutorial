// Given a list of numbers, write a Dart function that returns the two numbers in the list that add up to a given target value.
// If there are multiple pairs of numbers that add up to the target value, the function should return the pair with the lowest indices.

// For example, given the list [1, 2, 3, 4, 5] and a target value of 7,
// the function should return [2, 5], since 2 + 5 = 7 and
// 2 and 5 have lower indices than any other pair that adds up to 7 in the list.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int target = 7;

  List<int> result = (findPair(numbers, target));
  print(result.toString() == [2, 5].toString() ? "Correct" : "Incorrect");
}

List<int> findPair(List<int> numbers, int target) {
  for (int find1 = 0; find1 < numbers.length; find1++) {
    for (int find2 = find1 + 1; find2 < numbers.length; find2++) {
      if (numbers[find1] + numbers[find2] == target) {
        return [numbers[find1], numbers[find2]];
      }
    }
  }
  return [];
}
