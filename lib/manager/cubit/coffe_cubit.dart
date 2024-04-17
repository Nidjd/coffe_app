import 'package:bloc/bloc.dart';
import 'package:coffe_app/models/coffe.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'coffe_state.dart';

class CoffeCubit extends Cubit<CoffeState> {
  CoffeCubit() : super(CoffeInitial());

  final List<Coffe> _shop = [
    Coffe(
      name: 'Long Black',
      price: '34.4',
      imagePath: 'assets/images/espresso.png',
    ),
    Coffe(
      name: 'Late',
      price: '32.6',
      imagePath: 'assets/images/espresso.png',
    ),
    Coffe(
      name: 'Espresso',
      price: '43.4',
      imagePath: 'assets/images/espresso.png',
    ),
    Coffe(
      name: 'Iced Coffe',
      price: '26.7',
      imagePath: 'assets/images/espresso.png',
    ),
  ];

  final List<Coffe> _userCart = [];

  List<Coffe> get coffeShop => _shop;
  List<Coffe> get userCart => _userCart;

  void addItemToTheCart(Coffe coffe, context) {
    _userCart.add(coffe);
    emit(CoffeAdd());
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Successfully added to the cart"),
            ));
  }

  void removeItemInCart(Coffe coffe) {
    _userCart.remove(coffe);
    emit(CoffeRemove());
  }
}
