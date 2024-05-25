import 'package:commerce_app/components/shoe_tile.dart';
import 'package:commerce_app/models/cart.dart';
import 'package:commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to cart
  void addToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    //alert user, shoe has been added to cart
    showDialog(context: context, builder:(context) => const AlertDialog(
      title: Text('Succesfully Added'),
      content: Text('Check Your Cart'),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(
        children: [
          //search bar
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary, 
              borderRadius: BorderRadius.circular(8)
              ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.search),
              ],
            ),
           ),
          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text('Everyone Flies, Some Fly Higher..', style: TextStyle(
              color: Colors.grey[600]),),
          ),
          //hotpicks
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Hot Picks🔥', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                ),
                Text('See All', style: TextStyle(color: Colors.blue),)
              ],
            ),
          ),
           const SizedBox(height: 15,),
        //list of shoes 
        Expanded(
          child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) {
            //get a shoe
            Shoe shoe = value.getShoeForSale()[index];
              //display a shoe
              return ShoeTile(shoe:shoe, onTap:() => addToCart(shoe),);
          },
         ),
        ),
        ],
      ),
      );
  }
}