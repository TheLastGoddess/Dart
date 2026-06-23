import 'dart:io';

Future main(List<String> args) async {
  var config = File(r'C:\Users\Asus\Desktop\cli\bin\random.txt'); //add your text file's path
  var contents;
  contents = await config.readAsLines();
  print(contents.length);
  contents = await config.readAsString();
  print(contents.length);
}
