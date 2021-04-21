import 'package:flutter/material.dart';
import 'package:flutter_blog_sample/blocs/cart_bloc.dart';

class CartListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Sepetim")),
      body: StreamBuilder(
        stream: cartBloc.getStream,
        initialData: cartBloc.getCart(),
        builder: (context,snapshot){
          return buildCartItems(snapshot);
        },
      ),
          );
        }
      
        buildCartItems(AsyncSnapshot snapshot) {
          return 
          ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context,index){
              final cart=snapshot.data;
              return ListTile(
                  leading: IconButton(icon: Icon(Icons.shopping_bag), onPressed: (){},),
                  title: Text(cart[index].product.name),
                  subtitle: Text(cart[index].product.price.toString()),
                  trailing: IconButton(icon: Icon(Icons.delete), onPressed: (){cartBloc.removeFromCart(cart[index]);},),
              );
            });
        }

}