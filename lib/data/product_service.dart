import 'package:flutter_blog_sample/models/product.dart';

class ProductService {
  static List<Product> products = <Product>[];

  static ProductService _singleton = ProductService._internal();

  ProductService._internal();

  factory ProductService() => _singleton;

  static List<Product> getAll() {
    products.add(Product(1, "Acer Laptop", 10.249));
    products.add(Product(2, "Lenovo Laptop", 12.978));
    products.add(Product(3, "Kulaklık", 200));
    products.add(Product(4, "Mouse", 120));
    products.add(Product(5, "Klavye", 100));
    return products;
  }
}
