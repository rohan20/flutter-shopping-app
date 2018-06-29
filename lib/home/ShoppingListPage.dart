import 'package:flutter/material.dart';

class ShoppingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Container(
          color: Colors.white,
        ),
        appBar: new AppBar(
          title: new Text("Shopping App"),
        ),
      ),
    );
  }
}
