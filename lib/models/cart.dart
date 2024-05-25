import 'package:commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop= [
    Shoe(
      name: 'Air Force', 
      price: '240', 
      description: 'The OG Of Sneakers, Efforrless Drip', 
      imagePath: 'lib/images/air force.png'),
      Shoe(
      name: 'Green Sneakers', 
      price: '76', 
      description: 'Generic Green Sneakers, Go Jogging!', 
      imagePath: 'lib/images/green.png'),
      Shoe(
      name: 'Blue Sneakers', 
      price: '165', 
      description: 'Generic Trainers, Go Jogging!', 
      imagePath: 'lib/images/blue.jpg'),
      Shoe(
      name: 'Jordan 1', 
      price: '350', 
      description: 'Only ONE Jordan, Timeless Steeze', 
      imagePath: 'lib/images/jordan 1.jpg',),
  ];
  //list of items in cart
  List<Shoe> userCart=[];
  //get items for sale
  List<Shoe> getShoeForSale(){
    return shoeShop;
  }
  //get cart content
  List<Shoe> getCart(){
    return userCart;
  }
  //add to cart
  void addToCart (Shoe shoe){
    userCart.add(shoe);
  }
  //remove from cart
  void removeItemFromCart (Shoe shoe){
    userCart.remove(shoe);
  }
}