import 'package:flutter/material.dart';
import 'package:sneakertute/models/shoe.dart';

class Cart extends ChangeNotifier{

  List<Shoe> shoeShop =[
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'assets/images/S1.jpeg',
        description: 'The forward thinking design of his latest signature shoe'
    ),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagePath: 'assets/images/S2.jpeg',
        description: 'You\'ve got the hops and the speed-lace up in shoes that enhance to sport'
    ),
    Shoe(
        name: 'KD Treys',
        price: '240',
        imagePath: 'assets/images/S3.jpeg',
        description: 'A secure midfoot strap is suited for scoring binges and defensive'
    ),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath: 'assets/images/S4.jpeg',
        description: 'Bouncy cushioning is paired with soft yet supportive foam for rest'
    )

  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void remobeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}