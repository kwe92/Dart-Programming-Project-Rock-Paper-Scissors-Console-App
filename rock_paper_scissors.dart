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
  stdout.write(gameText);
  final user_input = stdin.readLineSync().toString();
  if (gameChoices.contains(user_input)) {
    randNum = Random().nextInt(3);
    aiMove = GameMoves.values[randNum];
    userMove = GameMoves.values[gameChoices.indexOf(user_input)];

    if (userMove == aiMove) {
      print('''
              AI selects: $aiMove
              User selects: $userMove
            ''');
    }
    print('AI plays: $aiMove');
    print('User plays: $userMove');
    // print(user_input);
  } else {
    print(
        'Incorrect input, use (r/p/s) to make a selection or q to quit the game.');
  }
  // print(user_input);
}
