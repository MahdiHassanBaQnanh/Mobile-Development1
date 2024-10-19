import 'dart:io';

void main() {
  print('Please enter the radius of a  : ');
  String? input = stdin.readLineSync();
  double value = double.parse(input!);

  double area = 3.14159 * value * value;

  print('The area of the circle is : $area');
}
