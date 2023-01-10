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
          title: Text("latihan Row dan Colomn"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('text 1'),
            Text('text 2'),
            Text('text 3'),
            Row(
              children: [
                Text('Text 4'),
                Text('Text 5'),
                Text('Text 6'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
