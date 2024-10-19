//10- Write a program to sum of the first 5 even integers after user input.
import 'dart:io';

void main() {
  print('please enter a number');
  String? input = stdin.readLineSync();
  int UserNum = int.parse(input!);

  List<int> evenNum = [];

  int nextNumber = UserNum + 1;

  while (evenNum.length < 5) {
    if (nextNumber % 2 == 0) {
      evenNum.add(nextNumber);
    }
    nextNumber++;
  }

  int sum = evenNum.reduce((a, b) => a + b);

  print('The first 5 even numbers after the number $UserNum is: $evenNum');
  print('The sum of these numbers is : $sum');
}
