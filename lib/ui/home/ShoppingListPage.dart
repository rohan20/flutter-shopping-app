import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/model/Product.dart';
import 'package:flutter_e_commerce/ui/home/ShoppingListItem.dart';

class ShoppingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: _gridView(),
        appBar: new AppBar(
          title: new Text("Shopping App"),
        ),
      ),
    );
  }

  GridView _gridView() {
    return new GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      children: _productsList()
          .map(
            (product) => ShoppingListItem(),
          )
          .toList(),
    );
  }

  List<Product> _productsList() {
    return [
      new Product(
          name: "Blue Shirt",
          rating: 4.2,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
      new Product(
          name: "Red Shirt",
          rating: 4.8,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
      new Product(
          name: "Black Shirt",
          rating: 3.2,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
      new Product(
          name: "Brown Shirt",
          rating: 4.8,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
      new Product(
          name: "Green Shirt",
          rating: 4.1,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
    ];
  }
}
