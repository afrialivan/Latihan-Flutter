import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Tabbar dan hero"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.camera)),
              Tab(
                icon: Icon(Icons.message),
              ),
              Tab(
                icon: Icon(Icons.phone),
              ),
              Tab(
                icon: Icon(Icons.person),
              )
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("tab 1"),
            ),
            Center(
              child: Text("tab 2"),
            ),
            Center(
              child: Text("tab 3"),
            ),
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                child: GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return SecondPage();
                    })));
                  }),
                  child: Hero(
                    tag: "pp",
                    child: Container(
                        height: 100,
                        width: 100,
                        child: Image(
                          image: NetworkImage(
                              "https://source.unsplash.com/random"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("second page")),
      body: Hero(
          tag: "pp",
          child: Container(
              height: 400,
              width: 400,
              child: Image(
                image: NetworkImage("https://source.unsplash.com/random"),
                fit: BoxFit.cover,
              ))),
    );
  }
}
