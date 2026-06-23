import 'dart:io';
import 'dart:convert';

Future main(List<String> args) async {
  var config = File('new.txt');
  var my_txt = config.openWrite(mode: FileMode.append);
  my_txt.write('Hwllo miss Elaheh');
  await my_txt.flush();
  await my_txt.close();

  config
      .openRead()
      .map(utf8.decode)
      .transform(LineSplitter())
      .forEach((l) => print(l));
}
