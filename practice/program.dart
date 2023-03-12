import 'dart:io';
import 'dart:math';

void main() {
  // Prompt the user for their choice
  print('Choose rock, paper, or scissors:');
  String? userChoice = stdin.readLineSync()?.toLowerCase();

  // Generate the computer's choice
  String computerChoice = ['rock', 'paper', 'scissors'][Random().nextInt(3)];

  // Determine the winner
  if (userChoice == computerChoice) {
    print('It\'s a tie!');
  } else if (userChoice == 'rock' && computerChoice == 'scissors' ||
      userChoice == 'paper' && computerChoice == 'rock' ||
      userChoice == 'scissors' && computerChoice == 'paper') {
    print('You win! $userChoice beats $computerChoice.');
  } else {
    print('You lose! $computerChoice beats $userChoice.');
  }
}
