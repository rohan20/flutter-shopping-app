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
      fit: StackFit.expand,
      children: <Widget>[
        new ListItemImage(),
        new ListItemRating(),
        new ListItemName(),
      ],
    );
  }
}

class ListItemRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              new SizedBox(
                width: 5.0,
              ),
              new Text(
                "4.9",
                maxLines: 1,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListItemImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Image.network(
      "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg",
      fit: BoxFit.cover,
    );
  }
}

class ListItemName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: Alignment.bottomCenter,
      child: new Container(
        color: Colors.black38,
        constraints: BoxConstraints.expand(
          height: 80.0,
        ),
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
