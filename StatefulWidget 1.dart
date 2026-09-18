import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Future Gadgets')),
        body: const my_page(),
      ),
    );
  }
}

class my_page extends StatefulWidget {
  const my_page({super.key});

  @override
  State<my_page> createState() => _my_pageState();
}

class _my_pageState extends State<my_page> {
  bool checking = true;
  @override
  Widget build(BuildContext context) {
    return checking
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Text('TRUE', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 50),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    checking = !checking;
                  });
                },
                child: Text('Press Me'),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                child: Center(
                  child: Text('FALSE', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 50),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    checking = !checking;
                  });
                },
                child: Text('Press Me'),
              ),
            ],
          );
  }
}
