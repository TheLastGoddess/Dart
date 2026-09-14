import 'package:flutter/material.dart';
// import 'pages/pageone.dart';

void main() {
  runApp(my_App());
}

class my_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MY New App")),
        // body: firstpage(),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              border: BoxBorder.all(color: Colors.black45, width: 5),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 200,
            height: 300,
            child: AspectRatio(
              aspectRatio: 2 / 1,
              // fit: BoxFit.cover,
              child: Image.asset('assets/images.jfif', fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
