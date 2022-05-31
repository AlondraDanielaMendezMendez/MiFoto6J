import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Foto de Alondra Méndez'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            width: 200.0,
            padding: EdgeInsets.all(10), //apply padding to all four sides
            margin: EdgeInsets.all(20),
            child: Text("Méndez Méndez Alondra Daniela", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            decoration: new BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.teal,
                  width: 3,
                )),
          ),
          const Divider(
            height: 40,
            thickness: 5,
            indent: 80,
            endIndent: 80,
            color: Colors.teal,
          ),
          Container(
            width: 150.0,
            height: 150,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/alumna.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Divider(
            height: 0,
            thickness: 5,
            indent: 80,
            endIndent: 80,
            color: Colors.teal,
          ),
          Container(
            width: 200.0,
            padding: EdgeInsets.all(10), //apply padding to all four sides
            margin: EdgeInsets.all(30),
            child: Text("6J Programación",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                )),
          ),
        ],
      )),
    );
  }
}
