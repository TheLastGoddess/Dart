Iterable<int> oddnum(n) sync* {
  while (n > 0) {
    if (n % 2 != 0) {
      yield n;
    }
    n--;
  }
}

void main(List<String> args) {
  Iterable<int> number = oddnum(10);
  for (int i in number) {
    print(i);
  }
}
