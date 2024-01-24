import 'dart:io';

enum DaysOfTheWeeks { nothing, baby, boot, sun, shine, japan }

void main() {
  while (true) {
    stdout.write('Enter your move');
    final input = stdin.readLineSync();
    var playerMove;
    if (input == 'q') {
      break;
    } else if (input == 'n') {
      playerMove = (DaysOfTheWeeks.nothing);
    } else if (input == 1.toString()) {
      playerMove = (DaysOfTheWeeks.baby);
    } else if (input == 2.toString()) {
      playerMove = (DaysOfTheWeeks.boot);
    } else if (input == 3.toString()) {
      playerMove = (DaysOfTheWeeks.sun);
    } else if (input == 4.toString()) {
      playerMove = (DaysOfTheWeeks.shine);
    } else if (input == 5.toString()) {
      playerMove = (DaysOfTheWeeks.japan);
    } else {
      print('invalid input');
    }
    print(playerMove);
  }
}
/**
 * 
 * Baby, boot, son, shine, japan
 * 1 = baby, 2= boot, 3=son, 4=shine and 5 = japan
 * baby < boot<sion<shine<japan you win
 * 
 */