// Rock, Paper, Scissors Game loop
//  infinite while true
//  Read user input from console
//  if input is a valid move ('r', 'p', 's')
//  Choose AI move at random
//  Compare player move with the AI move
//  Show the result
//  else if input is 'q'
//    Quit the program
//  else
//    invalid input

import 'dart:io';
import 'dart:math';

enum GameMoves { Rock, Paper, Scissors }

/// The entry point of our program.
void main() {
  var aiMove;
  var userMove;
  var randNum;
  const gameText = 'Rock, Paper or Scissors? (r/p/s)';
  const List<String> gameChoices = ['r', 'p', 's'];
  while (true) {
    stdout.write(gameText);
    final user_input = stdin.readLineSync().toString();
    if (gameChoices.contains(user_input)) {
      randNum = Random().nextInt(3);
      aiMove = GameMoves.values[randNum];
      userMove = GameMoves.values[gameChoices.indexOf(user_input)];

      if (userMove == aiMove) {
        print('User selects: $userMove');
        print('AI selects: $aiMove');
        print('Resulting in a draw!');
      } else if (userMove == GameMoves.Rock && aiMove == GameMoves.Scissors ||
          userMove == GameMoves.Paper && aiMove == GameMoves.Rock ||
          userMove == GameMoves.Scissors && aiMove == GameMoves.Paper) {
        print('User selects: $userMove');
        print('AI selects: $aiMove');
        print('User wins!');
      } else {
        print('User selects: $userMove');
        print('AI selects: $aiMove');
        print('AI wins!');
      }
    } else if (user_input == 'q') {
      break;
    } else {
      print(
          'Incorrect input, use letters r, p, s to make a selection or q to quit the game.');
    }
  }
}
