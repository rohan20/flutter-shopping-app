import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/model/Product.dart';
import 'package:flutter_e_commerce/ui/home/ShoppingListItem.dart';

class StatefulShoppingListPage extends StatefulWidget {
  @override
  State<StatefulShoppingListPage> createState() {
    return new StatefulShoppingListPageState();
  }
}

class StatefulShoppingListPageState extends State<StatefulShoppingListPage> {
  get iosTheme => ThemeData(
        primaryColor: Colors.grey[100],
        primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.light,
      );

  get androidTheme => ThemeData(
        primaryColor: Colors.blue[500],
        primaryColorDark: Colors.blue[700],
        accentColor: Colors.pinkAccent,
      );

  List<Product> productsList = _productsList();

  @override
  Widget build(BuildContext context) {
    bool devicePlatform() => Theme.of(context).platform == TargetPlatform.iOS;

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: devicePlatform() ? iosTheme : androidTheme,
      home: new Scaffold(
        body: _gridView(),
        appBar: new AppBar(
          title: new Text("Shopping App"),
          elevation: devicePlatform() ? 0.0 : 4.0,
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.sort),
              onPressed: () {
                print("Sort icon pressed");
                setState(() {
                  productsList.sort(
                    (Product a, Product b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _gridView() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: new GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: productsList
            .map(
              (product) => ShoppingListItem(product: product),
            )
            .toList(),
      ),
    );
  }

  static List<Product> _productsList() {
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
              "https://assets.abfrlcdn.com/img/app/product/8/85181-250173-large.jpg"),
      new Product(
          name: "Black Shirt",
          rating: 3.2,
          imageUrl:
              "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/2127876/2017/11/23/11511431472633-Roadster-Men-Black-Regular-Fit-Solid-Casual-Shirt-8801511431472500-1_mini.jpg"),
      new Product(
          name: "Purple Shirt",
          rating: 4.8,
          imageUrl:
              "https://5.imimg.com/data5/YD/FK/MY-25516998/mens-formal-shirts-500x500.jpg"),
      new Product(
          name: "Green Shirt",
          rating: 4.1,
          imageUrl:
              "https://static1.jassets.com/p/See-Designs-Green-Solid-Casual-Shirt-9267-848157-1-pdp_slider_m.webp"),
      new Product(
          name: "Blue Shirt",
          rating: 4.2,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
      new Product(
          name: "Red Shirt",
          rating: 4.8,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/8/85181-250173-large.jpg"),
      new Product(
          name: "Black Shirt",
          rating: 3.2,
          imageUrl:
              "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/2127876/2017/11/23/11511431472633-Roadster-Men-Black-Regular-Fit-Solid-Casual-Shirt-8801511431472500-1_mini.jpg"),
      new Product(
          name: "Purple Shirt",
          rating: 4.8,
          imageUrl:
              "https://5.imimg.com/data5/YD/FK/MY-25516998/mens-formal-shirts-500x500.jpg"),
      new Product(
          name: "Green Shirt",
          rating: 4.1,
          imageUrl:
              "https://static1.jassets.com/p/See-Designs-Green-Solid-Casual-Shirt-9267-848157-1-pdp_slider_m.webp"),
      new Product(
          name: "Blue Shirt",
          rating: 4.2,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
      new Product(
          name: "Red Shirt",
          rating: 4.8,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/8/85181-250173-large.jpg"),
      new Product(
          name: "Black Shirt",
          rating: 3.2,
          imageUrl:
              "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/2127876/2017/11/23/11511431472633-Roadster-Men-Black-Regular-Fit-Solid-Casual-Shirt-8801511431472500-1_mini.jpg"),
      new Product(
          name: "Purple Shirt",
          rating: 4.8,
          imageUrl:
              "https://5.imimg.com/data5/YD/FK/MY-25516998/mens-formal-shirts-500x500.jpg"),
      new Product(
          name: "Green Shirt",
          rating: 4.1,
          imageUrl:
              "https://static1.jassets.com/p/See-Designs-Green-Solid-Casual-Shirt-9267-848157-1-pdp_slider_m.webp"),
      new Product(
          name: "Blue Shirt",
          rating: 4.2,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/1/199775-614183-large.jpg"),
      new Product(
          name: "Red Shirt",
          rating: 4.8,
          imageUrl:
              "https://assets.abfrlcdn.com/img/app/product/8/85181-250173-large.jpg"),
      new Product(
          name: "Black Shirt",
          rating: 3.2,
          imageUrl:
              "https://assets.myntassets.com/h_240,q_90,w_180/v1/assets/images/2127876/2017/11/23/11511431472633-Roadster-Men-Black-Regular-Fit-Solid-Casual-Shirt-8801511431472500-1_mini.jpg"),
      new Product(
          name: "Purple Shirt",
          rating: 4.8,
          imageUrl:
              "https://5.imimg.com/data5/YD/FK/MY-25516998/mens-formal-shirts-500x500.jpg"),
      new Product(
          name: "Green Shirt",
          rating: 4.1,
          imageUrl:
              "https://static1.jassets.com/p/See-Designs-Green-Solid-Casual-Shirt-9267-848157-1-pdp_slider_m.webp"),
    ];
  }
}
