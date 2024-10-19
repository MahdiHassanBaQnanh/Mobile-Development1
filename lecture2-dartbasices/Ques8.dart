//8- Write a program to test whether a passed letter is a vowel or not.

import 'dart:io';

void main() {
  print(' Enter a letter:');
  String? input = stdin.readLineSync();

  if (input != null && input.length == 1) {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

    if (vowels.contains(input)) {
      print('$input  is vowel.');
    } else {
      print('$input  is not vowel.');
    }
  } else {
    print('please enter one letter');
  }
}
