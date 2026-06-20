import 'dart:async';

void main(List<String> args) {
  List<int> data = [1, 4, 5, 3, 67, 32];
  Stream stream = Stream<int>.fromIterable(data);
  Stream broadcast = stream.asBroadcastStream();
  // broadcast.listen((value) => print(value));
  broadcast.first.then((value) => print("The first value : $value"));
  broadcast.last.then((value) => print("The last value : $value"));
  broadcast.where((value) => value % 2 == 0).listen((value) => print(value));
  broadcast
      .skipWhile((value) => value % 2 == 0)
      .listen((value) => print(value));
}
