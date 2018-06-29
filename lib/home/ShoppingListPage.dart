import 'package:flutter/material.dart';

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

class ShoppingListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        )
      ),
      margin: const EdgeInsets.all(20.0),
      child: Center(
        child: new Text(
          "List Item 1",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
