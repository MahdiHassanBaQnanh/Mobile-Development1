//12- Write a program to count the number of repetitions of each character in any word.
import 'dart:io';

void main() {
  print('Please enter a word :');
  String? word = stdin.readLineSync();

  if (word != null && word.isNotEmpty) {
    Map<String, int> charCount = {};

    for (int i = 0; i < word.length; i++) {
      String char = word[i];

      if (charCount.containsKey(char)) {
        charCount[char] = charCount[char]! + 1;
      } else {
        charCount[char] = 1;
      }
    }

    charCount.forEach((char, count) {
      print('character "$char" repeat $count times');
    });
  } else {
    print('please enter a word?');
  }
}
