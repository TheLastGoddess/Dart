import 'package:test/test.dart'; //we need to doenload this pckg

int add(int x, int y) {
  return x + y;
}

int sub(int x, int y) {
  return x - y;
}

void main(List<String> args) {
  group('Group 1 test', () {
    test('test to check add Function', () {
      var expected = 70;
      var actual = add(50, 20);
      expect(actual, expected);
    });
    test('test to check sub Function', () {
      var expected = 30;
      var actual = sub(50, 20);
      expect(actual, expected);
    });
  });
}
