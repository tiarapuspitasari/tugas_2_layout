import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List galery = [
    "assets/images/01.jpg",
    "assets/images/02.jpg",
    "assets/images/03.jpg",
    "assets/images/04.jpg",
    "assets/images/05.jpg",
    "assets/images/06.jpg",
    "assets/images/07.jpg",
    "assets/images/08.jpg",
    "assets/images/09.jpg",
    "assets/images/10.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
    "assets/images/14.jpg",
    "assets/images/15.jpg",
    "assets/images/16.jpg",
    "assets/images/17.jpg",
    "assets/images/18.jpg",
    "assets/images/19.jpg",
    "assets/images/20.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galery", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index > 2) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(galery[index % 15]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(galery[index]),
            );
          }
        },
      ),
    );
  }
}
