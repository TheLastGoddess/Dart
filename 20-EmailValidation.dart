//we create a folder called pubspec.yaml and import email validaton from github in this order:
import 'package:email_validator/email_validator.dart';

void main(List<String> args) {
  const String email = "koojf@.eom";
  final bool isValid = EmailValidator.validate(email);

  print("Email is Valid? " + (isValid ? "yes" : "no"));
}
