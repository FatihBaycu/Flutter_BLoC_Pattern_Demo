import 'dart:async';

import 'package:flutter_blog_sample/data/cart_service.dart';
import 'package:flutter_blog_sample/models/cart.dart';

class CartBloc{

  final cartStreamController=StreamController.broadcast();

  Stream get getStream=>cartStreamController.stream;

  void addToCart(Cart item){
    CartService.addToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  void removeFromCart(Cart item){
    CartService.removeToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

    List<Cart> getCart()=> CartService.getCart();
}
final cartBloc=CartBloc();