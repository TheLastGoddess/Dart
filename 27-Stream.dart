import 'dart:async';

void main(List<String> args) {
  List<int> data = [1, 4, 5, 3, 67, 32];
  Stream stream = Stream<int>.fromIterable(data);
  stream.listen((value) {
    print(value);
  });
  print("............");
  stream.first.then((value) => print(value));
}
