import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  File(r'C:\Users\Asus\Desktop\cli\bin\random.txt')
      .openRead()
      .map(utf8.decode)
      .transform(LineSplitter())
      .forEach((l) => print(l));
}
