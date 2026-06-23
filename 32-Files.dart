import 'dart:io';

Future main(List<String> args) async {
  var config = File('random.txt');
  var contents;
  // contents = await config.readAsLines();
  // print(contents.length);
  try {
    contents = await config.readAsString();
    print(contents.length);
  } catch (e) {
    print("couldn't find the file");
  }
}
