import 'dart:core';

import 'package:coffe_app/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeShop {
  final List<Coffe> _shop = [
    Coffe(
      name: 'Long Black',
      price: '34.4',
      imagePath: 'assets/images/cofee2.png',
    ),
    Coffe(
      name: 'Late',
      price: '32.6',
      imagePath: 'assets/images/cofee2.png',
    ),
    Coffe(
      name: 'Espresso',
      price: '43.4',
      imagePath: 'assets/images/cofee2.png',
    ),
    Coffe(
      name: 'Iced Coffe',
      price: '26.7',
      imagePath: 'assets/images/cofee2.png',
    ),
  ];

  final List<Coffe> _userCart = [];

  List<Coffe> get coffeShop => _shop;
  List<Coffe> get userCart => _userCart;

  void addItemToTheCart(Coffe coffe) {
    _userCart.add(coffe);
  }
  void removeItemInCart(Coffe coffe) {
    _userCart.remove(coffe);
  }
}
