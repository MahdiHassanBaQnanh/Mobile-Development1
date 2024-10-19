import 'dart:io';

void main() {
  print('Enter the filename:');
  String? userFileInput = stdin.readLineSync();

  if (userFileInput != null && userFileInput.isNotEmpty) {
    if (userFileInput.contains('.')) {
      List<String> fileParts = userFileInput.split('.');
      String fileExtension = fileParts.last;
      print('The file extension is: $fileExtension');
    } else {
      print('The filename does not have an extension.');
    }
  } else {
    print('Filename cannot be empty!');
  }
}
