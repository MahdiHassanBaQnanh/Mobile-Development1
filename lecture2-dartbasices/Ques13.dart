void main() {
  List<int> x = [4, 4, 7, 9, 12, 15, 22, 30, 18, 60, 92];
  List<int> y = [3, 7, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30];
  List<int> sharedItems = x.toSet().intersection(y.toSet()).toList();
  print('The common elements between the two lists are : $sharedItems');
}
