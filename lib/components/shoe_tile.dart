// ignore_for_file: must_be_immutable
import 'package:commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe ;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, bottom: 55),
      width: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)
            ), 
          //description
          Text(shoe.description, style: TextStyle(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          ),
          //price+details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name and price
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      shoe.name, 
                      style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                    const SizedBox(height: 5,),
                    //price
                    Text(
                      '\$ ${shoe.price}', 
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                    ),
                    ),
                  ],
                ),
              ),
              //add to cart button
             GestureDetector(
               onTap: onTap,
               child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                ),
                child: const Icon(Icons.add, color: Colors.white,)
                ),
             ),
            ],
          )
        ],
      ),
    );
  }
}