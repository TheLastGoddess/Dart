import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            elevation: 50,
            toolbarHeight: 50,
            actions: const <Widget>[
              IconButton(
                onPressed: null,
                tooltip: "Don't Press",
                icon: Icon(Icons.add_home_work_rounded),
              ),
            ],
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text(
              'Shad App',
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontFamily: 'tradbdo',
                // fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),

        drawer: Drawer(
          backgroundColor: Colors.lightGreenAccent,
          width: 250,
          child: SafeArea(
            child: Builder(
              builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Circular / standard back arrow button
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context); // Closes the drawer
                    },
                  ),
                  const Expanded(child: Center(child: Text("Oh u pulled it?"))),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.deepPurple,
          height: 50,
          child: Row(),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: const Icon(
            Icons.access_alarm_rounded,
            color: Color.fromARGB(255, 89, 93, 202),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://shad.ir/static/img/Logo.png',
                filterQuality: FilterQuality.high,
                scale: 3,
              ),
              const SizedBox(height: 20),
              RichText(
                textDirection: TextDirection.rtl,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  text: " سلام بچه های ",
                  style: TextStyle(
                    fontFamily: 'tradbdo',
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: "شاد",
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(text: " حال و احوالتون چطوره؟؟؟؟؟؟"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
