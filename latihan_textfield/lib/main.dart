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
  // TextEditingController controller = TextEditingController(text: "Nilai Awal");
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Textfield"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  suffix: Container(
                    width: 10,
                    height: 10,
                    color: Colors.red,
                  ),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name",
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                  labelText: "Nama Lengkap",
                  // hintText: "Nama lengkap",
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),

                onChanged: (value) {
                  setState(() {});
                },
                // // untuk jadi password
                // obscureText: true,
                maxLength: 8,
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
