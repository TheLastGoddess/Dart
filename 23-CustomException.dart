class PaymentException implements Exception {
  String errorMessage() {
    return "U cannot enter amount less than Zero ";
  }
}

void main(List<String> args) {
  void payment(int amount) {
    if (amount < 0) {
      throw PaymentException();
    }
  }

  try {
    payment(-10);
  } on PaymentException catch (e) {
    print(e.errorMessage());
  }
}
