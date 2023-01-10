import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(
            "Back",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }
}
