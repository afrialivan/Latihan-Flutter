import 'package:flutter/material.dart';
import 'package:latihan_navigation/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: (() {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) {
              return MainPage();
            })));
          }),
        ),
      ),
    );
  }
}
