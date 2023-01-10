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
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text(
              "Latihan Card",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.green[100],
            actions: [
              IconButton(
                  onPressed: (() {
                    setState(() {
                      widgets.add(buildCard(Icons.adb, "Ini adalah card ke "));
                    });
                    // counter++;
                  }),
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.black,
                  ))
            ],
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            child: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: (() {
                        setState(() {
                          widgets.add(buildCard(Icons.adb,
                              "Ini adalah card ke " + counter.toString()));
                        });
                        counter++;
                      }),
                      child: Text('tambah')),
                  TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: (() {
                        (counter != 1)
                            ? setState(() {
                                widgets.removeLast();
                                counter--;
                              })
                            : null;
                      }),
                      child: Text('hapus')),
                ],
              ),
              Column(
                children: widgets,
              )
              // widgets
              // [
              // buildCard(Icons.adb, "Ini adalah logo android"),
              // buildCard(Icons.access_alarm, "Ini adalah alarm")
            ]),
          )),
    );
  }

  Card buildCard(IconData iconData, String teks) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(margin: EdgeInsets.all(5), child: Icon(iconData)),
          Text(teks)
        ],
      ),
    );
  }
}
