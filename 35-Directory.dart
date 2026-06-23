import 'dart:io';
import 'dart:convert';

Future main(List<String> args) async {
  // var my_dir = Directory(r'my_dir\goodBaby').create(recursive: true);// u need to comment this line if it's already exist
  var my_dir1 = Directory(r'my_dir\goodBaby');
  my_dir1.exists().then((i) {
    i ? print(my_dir1) : print("File Doesn't Exist !");
  });
}
