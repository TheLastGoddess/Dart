import "dart:math";
import 'dart:convert';

class Password {
  static final Random _random = Random();

  static String key([int length = 32]) {
    List<int> values = List<int>.generate(length, (i) => _random.nextInt(256));
    return base64Url.encode(values);
  }
}

void main(List<String> args) {
  for (int i = 1; i < 4; i++) {
    print("No ($i) $Password.key()");
  }
}
