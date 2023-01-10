import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Image")),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: NetworkImage(
                  "https://keker.fajar.co.id/wp-content/uploads/2022/09/Picsart_22-09-06_15-48-43-343-2048x1365.jpg"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeatY,
            ),
          ),
        ),
      ),
    );
  }
}
