import 'package:commerce_app/components/cart_item.dart';
import 'package:commerce_app/models/cart.dart';
import 'package:commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           //heading
           const Text('My Cart', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
           ),
           ),
          const SizedBox(height: 10,),
          //cart items
          Expanded(
            child: ListView.builder(
              itemCount: value.getCart().length,
              itemBuilder:(context, index) {
                //get individual shoe
                Shoe individualShoe = value.getCart()[index];

                //return cart item
                return CartItem(shoe: individualShoe,);
              },
            ),
            ),
        ],
      ),
    ),
    );
  }
}