//9- Write a program to concatenate all elements in a list into a string and return it.
void main() {
  List<String> words = ['Hello,', 'my', 'dear', 'is', ' teacher'];

  String concatenatedString = words.join(' ');

  print('String after marging : $concatenatedString');
}
