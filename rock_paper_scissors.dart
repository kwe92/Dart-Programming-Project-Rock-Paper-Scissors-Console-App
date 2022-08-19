// Import 'dart:io' is required for stdout && stdin
import 'dart:io';

// Import 'dart:math' is required for the Random number generator
import 'dart:math';

// create an enum constant values
enum GameMoves { Rock, Paper, Scissors }

/// The entry point of our program.
void main() {
  var aiMove;
  var userMove;
  var randNum;
  int usrScore = 0;
  int aiScore = 0;
  // Create const variables for gameText && gameChoices list
  const gameText = 'Rock, Paper or Scissors? (r/p/s)';
  const List<String> gameChoices = ['r', 'p', 's'];
  // Infinite while true
  while (true) {
    // Write start of game text to user
    stdout.write(gameText);
    // Read user input from console
    final user_input = stdin.readLineSync().toString();
    // if input is a valid move ('r', 'p', 's')
    if (gameChoices.contains(user_input)) {
      // Rock, Paper, Scissors Game loop
      randNum = Random().nextInt(3);
      // Choose AI move at random
      userMove = GameMoves.values[gameChoices.indexOf(user_input)];
      aiMove = GameMoves.values[randNum];
      // Compare player move with the AI move
      if (userMove == aiMove) {
        print('User selects: $userMove');
        print('AI selects: $aiMove');
        print('Resulting in a draw!');
        print('User Score: $usrScore AI Score: $aiScore');
      } else if (userMove == GameMoves.Rock && aiMove == GameMoves.Scissors ||
          userMove == GameMoves.Paper && aiMove == GameMoves.Rock ||
          userMove == GameMoves.Scissors && aiMove == GameMoves.Paper) {
        usrScore += 5;
        print('User selects: $userMove');
        print('AI selects: $aiMove');
        print('User wins!');
        print('User Score: $usrScore AI Score: $aiScore');
      } else {
        aiScore += 5;
        print('User selects: $userMove');
        print('AI selects: $aiMove');
        print('AI wins!');
        print('User Score: $usrScore AI Score: $aiScore');
      }
    }
    // else if input is 'q'
    //   Quit the program
    else if (user_input == 'q') {
      break;
    }
    // else
    //   invalid input
    else {
      print(
          'Incorrect input, use letters r, p, s to make a selection or q to quit the game.');
    }
  }
}
