import 'dart:async';

void main(List<String> args) {
  // String text() {
  //   return "This is my txt";
  // }

  Future<String> myreciever =
      Future.delayed(Duration(seconds: 5), () => "This is my text");
  myreciever.then((value) {
    print(value);
  });
}
