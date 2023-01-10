import 'package:flutter/material.dart';
import 'package:latihan_navigation/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(
            "Go to second page",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SecondPage();
              },
            ));
          }),
        ),
      ),
    );
  }
}
