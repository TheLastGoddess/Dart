void main() {
  (double?, double?) minMax(List<double> numbers) {
    if (numbers.length == 0) {
      return (null, null);
    }
    double min = numbers[0];
    double max = numbers[0];

    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < min) {
        min = numbers[i];
      }
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }
    return (min, max);
  }

  final result = minMax([2, 5, 3, 0, -1, 10, -20]);
  print(result);
}
