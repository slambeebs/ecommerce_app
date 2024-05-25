// ignore_for_file: must_be_immutable

import 'package:commerce_app/models/cart.dart';
import 'package:commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
 CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove from cart
  void removeItemFromCart (){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
         leading: Image.asset(widget.shoe.imagePath),
         title: Text(widget.shoe.name),
         subtitle: Text('\$ ${widget.shoe.price}'),
         trailing: IconButton( 
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
          )
      ),
    ); 
  }
}