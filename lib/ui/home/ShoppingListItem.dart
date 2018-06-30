import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/model/Product.dart';

class ShoppingListItem extends StatelessWidget {
  final Product product;

  const ShoppingListItem({@required this.product});

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
            border: Border.all(
          color: Colors.black,
          width: 1.0,
        )),
        margin: const EdgeInsets.all(4.0),
        child: new Container(
          child: new ListItemStack(product),
        ));
  }
}

class ListItemStack extends StatelessWidget {
  final Product product;

  ListItemStack(this.product);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      child: InkWell(
        onTap: () {
          print(product.name + " tapped");
          Navigator
              .of(context)
              .push(new MaterialPageRoute(builder: (context) => new DetailPage()));
        },
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new ListItemImage(product),
            new ListItemRating(product),
            new ListItemName(product),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Product detail"),
        ),
      ),
    );
  }

}

class ListItemRating extends StatelessWidget {
  final Product product;

  ListItemRating(this.product);

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
                size: 18.0,
              ),
              new SizedBox(
                width: 5.0,
              ),
              new Text(
                product.rating.toString(),
                maxLines: 1,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14.0,
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
  final Product product;

  ListItemImage(this.product);

  @override
  Widget build(BuildContext context) {
    return new Image.network(
      product.imageUrl,
      fit: BoxFit.cover,
    );
  }
}

class ListItemName extends StatelessWidget {
  final Product product;

  ListItemName(this.product);

  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: Alignment.bottomCenter,
      child: new Container(
        color: Colors.black.withOpacity(0.5),
        constraints: BoxConstraints.expand(
          height: 40.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: new Text(
              product.name,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
