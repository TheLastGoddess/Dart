import 'dart:async';
import 'dart:math';

void main(List<String> args) {
  List<int> data = [1, 4, 5, 3, 67, 32];
  Stream stream = Stream<int>.fromIterable(data);
  Stream broadcast = stream.asBroadcastStream();
  // broadcast.listen((value) => print(value));
  broadcast.single
      .then((value) => print("value is $value"))
      .catchError((err) => print(err));
  var SingleStream = stream.listen(null);
  SingleStream.onData((value) => print(value));
  SingleStream.onError((err) => print(err));
  SingleStream.onDone(() => print("done"));
  SingleStream.onData((value) {
    print(value);
    if (value == 2) {
      SingleStream.cancel();
    }
  });
}
