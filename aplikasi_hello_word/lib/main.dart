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
          appBar: AppBar(title: Text('Hello World')),
          body: Center(
              child: Container(
                  color: Colors.lightBlue,
                  width: 150,
                  height: 100,
                  child: const Text(
                    'Hello World saya sedang melatih kemampuan flutter saya',
                    // maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                    // overflow: TextOverflow.clip,
                    // softWrap: false,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  )))),
    );
  }
}
