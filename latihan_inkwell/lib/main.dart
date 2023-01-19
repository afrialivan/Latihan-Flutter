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
        appBar: AppBar(title: Text("Latihan InkWell")),
        body: Column(
          children: [
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                
              ),
            )
          ],
        ),
      ),
    );
  }
}