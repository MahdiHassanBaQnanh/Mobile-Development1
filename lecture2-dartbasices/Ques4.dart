//4- Write a program which accepts the user's first and last name and print them in reverse
//order with a space between them .

import 'dart:io';

void main() {
  print('Please enter your firstName:');
  String? FN = stdin.readLineSync();

  print('Please enter your lastName:');
  String? LS = stdin.readLineSync();

  if (FN != null && LS != null && FN.isNotEmpty && LS.isNotEmpty) {
    print('you name in reverse is: $LS $FN');
  } else {
    print('Please enter your name or last name !!!!');
  }
}
