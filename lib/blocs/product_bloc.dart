import 'dart:async';

import 'package:flutter_blog_sample/data/product_service.dart';
import 'package:flutter_blog_sample/models/product.dart';

class ProductBloc{
  final productStreamController=StreamController.broadcast();
  Stream get getStream=> productStreamController.stream;

  List<Product> getAll()=>ProductService.getAll();
}

final  productBloc=ProductBloc();