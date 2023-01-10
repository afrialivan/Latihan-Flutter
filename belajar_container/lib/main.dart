import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('latihan container'),
          ),
          body: Container(
            color: Colors.red,
            // margin: EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(10, 5, 20, 25),
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.blue, Colors.amber])),
            ),
          )),
    );
  }
}
