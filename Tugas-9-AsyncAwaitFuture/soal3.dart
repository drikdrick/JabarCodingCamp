main(List<String> args) async {
  print("Ready. sing");
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line() async {
  String lirik = "pernahkah kau merasa";
  return await Future.delayed(Duration(seconds: 5)).then((value) => lirik);
}
Future<String> line2() async {
  String lirik = "pernahkah kau merasa..";
  return await Future.delayed(Duration(seconds: 3)).then((value) => lirik);
}
Future<String> line3() async {
  String lirik = "pernahkah kau merasa....";
  return await Future.delayed(Duration(seconds: 2)).then((value) => lirik);
}
Future<String> line4() async {
  String lirik = "Hatimu hampa, pernahkah kau merasa hatimu kosong..";
  return await Future.delayed(Duration(seconds: 1)).then((value) => lirik);
}
