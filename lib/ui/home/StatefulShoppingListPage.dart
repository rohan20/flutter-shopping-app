import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/model/Product.dart';
import 'package:flutter_e_commerce/ui/home/ShoppingListItem.dart';
import 'package:flutter_e_commerce/util/Constants.dart';

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

  List<Product> productsList = Constants.productsList();
  bool isSorted = false;

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
                setState(() {
                  toggleItemsSorting();
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



  void toggleItemsSorting() {
    if (isSorted) {
      productsList = Constants.productsList();
    } else {
      productsList.sort(
        (a, b) => a.rating.compareTo(b.rating),
      );
    }
    isSorted = !isSorted;
  }
}
