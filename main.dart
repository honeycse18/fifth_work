import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SnackBar")),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);
  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text("Hi, I'm SnackBar"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        child: Text("Show SnackBar"),
        color: Colors.white,
        textColor: Colors.blueGrey,
        onPressed: () {
          showSnackBar(context);
        },
      ),
    );
  }
}
