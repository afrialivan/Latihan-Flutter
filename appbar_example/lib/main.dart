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
          leading: const Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: const Text(
            "Appbar Example",
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ))
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight)),
          ),
        ),
        body: Column(
          children: [Text("Ini Teks"), Text("Ini Teks")],
        ),
      ),
    );
  }
}
