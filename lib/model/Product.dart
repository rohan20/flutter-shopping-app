import 'package:meta/meta.dart';

class Product {
  String name;
  double rating;
  String imageUrl;

  Product({
    @required this.name,
    @required this.rating,
    @required this.imageUrl,
  });
}
