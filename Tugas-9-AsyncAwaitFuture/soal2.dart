main(List<String> args) {
  print("Life");
  pauseString("never flat").then((status) {
    print(status);
  });
  print("is");
}

Future pauseString(String message) async {
  return Future.delayed(Duration(seconds: 3)).then((value) => message);
}
