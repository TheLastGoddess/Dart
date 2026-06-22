Stream<int> oddnum(n) async* {
  while (n > 0) {
    if (n % 2 != 0) {
      yield n;
    }
    n--;
  }
}

void main(List<String> args) {
  Stream<int> numbers = oddnum(10);
  numbers.listen((int value) {
    print(value);
  });
  oddnum(5).forEach(print);
}
