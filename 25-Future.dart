import 'dart:async';

void main(List<String> args) {
  fetchmessage();
  print("User order is preparing ...");
}

Future<void> fetchmessage() {
  return Future.delayed(Duration(seconds: 3), () => print("Large Pizza"));
}
