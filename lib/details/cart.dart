import 'package:coffe2/classes/coffe_class.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of drinks

  List<Coffe> CofeShop = [
    Coffe(
      name: 'latte',
      price: "120",
      imgpath: "lib/photo/latte.png",
      descripe: "A large cup of latte for you",
    ),
    Coffe(
      name: 'coffe',
      price: "70",
      imgpath: "lib/photo/coffe.jpg",
      descripe: "A large cup of coffe for you",
    ),
    Coffe(
      name: 'coffe beans',
      price: "200",
      imgpath: "lib/photo/beans.png",
      descripe: "make your own coffe",
    ),
  ];
  // list in cart
  List<Coffe> userCart = [];

  //get the coffe items
  List<Coffe> getCoffeList() {
    return CofeShop;
  }

  //get cart
  List<Coffe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Coffe coffe) {
    userCart.add(coffe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Coffe coffe) {
    userCart.remove(coffe);
    notifyListeners();
  }
}
