import 'package:flutter/material.dart';

class ShoppingListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
            border: Border.all(
          color: Colors.black,
          width: 1.0,
        )),
        margin: const EdgeInsets.all(20.0),
        child: new Container(
          child: new ListItemStack(),
        ));
  }
}

class ListItemStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new ListItemImage(),
        new ListItemName(),
      ],
    );
  }
}

class ListItemImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Image.network(
      "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
    );
  }
}

class ListItemName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: Alignment.bottomCenter,
      child: new Container(
        constraints: BoxConstraints.expand(
          height: 80.0,
        ),
        color: Colors.black38,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: new Text(
              "Blue Shirt",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
