import 'package:flutter/material.dart';
import 'package:flutter_blog_sample/screens/cart_list_screen.dart';
import 'package:flutter_blog_sample/screens/product_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (BuildContext context) => ProductListScreen(),
      "/cart": (BuildContext context) => CartListScreen()
    },
    initialRoute:"/",
    );
  }
}
