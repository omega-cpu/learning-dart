import 'dart:io';

enum Operations { add, multiply, substract, divide }

void main() {
  while (true) {
    stdout.write('Enter number first number ');

    final input1 = int.parse(stdin.readLineSync()!);

    stdout.write('Enter number second number ');
    final input2 = int.parse(stdin.readLineSync()!);
    if (input1.isFinite && input2.isFinite) {
      stdout.write('Enter Operation ');
      final ops = stdin.readLineSync();
      if (ops == 'a') {
        print(input2 + input1);
      } else if (ops == 'm') {
        print(input1 * input2);
      } else if (ops == 's') {
        print(input1 - input2);
      } else {
        print('This operation not available');
      }
    } else {
      print('Enter a number');
    }
  }
  /**
   * the user can perform calculations
   * infinity
   * accept input
   * a for add
   * store in a variable
   * loop the input
   * q to quit
   */
}
