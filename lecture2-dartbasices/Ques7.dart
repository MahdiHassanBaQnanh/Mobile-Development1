//7- Write a program to count the number 4 in a given list.

void main() {
  List<int> numbers = [1, 4, 6, 4, 8, 4, 4, 5];

  int count = numbers.where((number) => number == 4).length;
  print('Number of times the number appears 4 : $count');
}
