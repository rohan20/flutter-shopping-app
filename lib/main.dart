import 'package:flutter/material.dart';

void main() {
  runApp(new ShoppingList());
  }

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.yellowAccent,
        body: new Container(
          color: Colors.teal,
        ),
        appBar: new AppBar(
          title: new Text("Hello World"),
        ),
      ),
    );
  }
}
