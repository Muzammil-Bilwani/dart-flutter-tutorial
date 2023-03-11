void main() {
  if (isPalindrome("madam")) {
    print("Palindrome");
  } else {
    print("Not Palindrome");
  }
}

bool isPalindrome(String input) {
  for (int i = 0; i < input.length; i++) {
    if (input[i] != input[input.length - 1 - i]) {
      return false;
    }
  }
  return true;
}
