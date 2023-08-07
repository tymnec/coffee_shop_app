import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    // Black Coffee
    Coffee(
        name: 'Long Black',
        price: '2.99',
        imagePath: 'lib/images/coffee_image_1.png'),

    // Latte
    Coffee(
        name: 'Coffee',
        price: '3.59',
        imagePath: 'lib/images/coffee_image_2.png'),

    // Espresso
    Coffee(
        name: 'Espresso',
        price: '12.49',
        imagePath: 'lib/images/coffee_image_3.png'),

    // Iced Coffee
    Coffee(
        name: 'Iced Coffee',
        price: '1.59',
        imagePath: 'lib/images/coffee_image_4.png'),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
