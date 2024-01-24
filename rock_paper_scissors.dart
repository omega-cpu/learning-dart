import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissor }

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else if (input == 's') {
        playerMove = Move.scissor;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('AI played  $aiMove and You Played $playerMove');

      if (playerMove == aiMove) {
        print('Draw');
      } else if (playerMove == Move.rock && aiMove == Move.scissor ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissor && aiMove == Move.paper) {
        print('You win');
      } else {
        print('You loss');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
      // break;
    }
  }
}
