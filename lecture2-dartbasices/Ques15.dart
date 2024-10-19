//Write a program that asks the user how many Fibonnaci numbers to generate and then
//generates them. Take this opportunity to think about how you can use functions.
//Make sure to ask the user to enter the number of numbers in the sequence to generate.

import 'dart:io';

List<int> generateFibonacci(int count) {
  List<int> Flist = [];

  int a = 0, b = 1;

  for (int i = 0; i < count; i++) {
    Flist.add(a);
    int next = a + b;
    a = b;
    b = next;
  }

  return Flist;
}

void main() {
  print('How many Fibonacci numbers would you like to generate ??');
  String? input = stdin.readLineSync();
  int count = int.parse(input!);
  List<int> FiNum = generateFibonacci(count);

  print('Fibonacci numbers are : $FiNum');
}
