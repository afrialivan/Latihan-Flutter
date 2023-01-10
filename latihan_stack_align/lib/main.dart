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
        appBar: AppBar(title: Text("Latihan Stack dan Align")),
        body: Stack(children: [
          Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ))
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ))
                    ],
                  ))
            ],
          ),
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text lapisan tengah",
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment(0.95, 1),
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: null,
                child: Text(
                  "Tombol",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ]),
      ),
    );
  }
}
