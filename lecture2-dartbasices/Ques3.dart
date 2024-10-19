import 'dart:io';

String reverseSentence(String sentence) {
  List<String> sentenceWords = sentence.split(' ');
  List<String> reversedSentenceWords = sentenceWords.reversed.toList();
  String finalReversedSentence = reversedSentenceWords.join(' ');

  return finalReversedSentence;
}

void main() {
  print('Please enter a sentence with multiple words:');
  String? userInput = stdin.readLineSync();

  if (userInput != null && userInput.isNotEmpty) {
    String outputSentence = reverseSentence(userInput);

    print('The sentence with reversed words is: $outputSentence');
  } else {
    print('No sentence was entered!');
  }
}
