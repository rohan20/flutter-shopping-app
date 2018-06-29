import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/home/ShoppingListItem.dart';

class ShoppingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new ShoppingListItem(),
        appBar: new AppBar(
          title: new Text("Shopping App"),
        ),
      ),
    );
  }
}
