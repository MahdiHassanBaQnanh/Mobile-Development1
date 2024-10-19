//Ask the user for a string and print out whether this string is a palindrome or not.
//A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

void main() {
  print('Please enter a text string');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    String cleanedInput = input.replaceAll(' ', '').toLowerCase();

    String reversedInput = cleanedInput.split('').reversed.join('');

    if (cleanedInput == reversedInput) {
      print('"$input" is Palindrome.');
    } else {
      print('"$input" Not Palindrome.');
    }
  } else {
    print('enter a text string');
  }
}
