void main() {
  Map<String, String> info = {
    'name': 'MAHDI',
    'phone': '1234',
    'city': 'alsuwm'
  };
  List<String> key4 = [];

  for (String key in info.keys) {
    if (info[key]!.length == 4) {
      key4.add(key);
    }
  }
  print('keys value 4 :$key4');
}
