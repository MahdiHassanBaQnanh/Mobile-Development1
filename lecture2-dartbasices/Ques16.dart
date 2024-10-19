import 'dart:io';

void main() {
  while (true) {
    // عرض الخيارات المتاحة للمستخدم
    print('Select an operation:');
    print('1. Addition (+)');
    print('2. Subtraction (-)');
    print('To exit, type: Exit');
    print('Your choice:');

    String? userInput = stdin.readLineSync();

    if (userInput == 'Exit') {
      print('Exiting the program. Goodbye!');
      break;
    }

    if (userInput == '1' || userInput == '2') {
      print('Please enter the first number:');
      int firstNumber = int.parse(stdin.readLineSync()!);
      print('Please enter the second number:');
      int secondNumber = int.parse(stdin.readLineSync()!);

      if (userInput == '1') {
        int resultSum = firstNumber + secondNumber;
        print('The sum is: $resultSum');
      } else if (userInput == '2') {
        int resultDifference = firstNumber - secondNumber;
        print('The difference is: $resultDifference');
      }
    } else {
      print('Error: Please select a valid option.');
    }
  }
}
