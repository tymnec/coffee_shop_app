import 'package:coffee_shop_app/components/cart_tile.dart';
import 'package:coffee_shop_app/models/coffee.dart';
import 'package:coffee_shop_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Remove Item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  // pay button
  void payNow() {
    // pay button
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(children: [
              const Text(
                "Your Cart",
                style: TextStyle(fontSize: 20),
              ),

              // list of cart
              Expanded(
                child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      // get individual coffee
                      Coffee eachCoffee = value.userCart[index];

                      // return the tile for this coffee
                      return CartTile(
                          coffee: eachCoffee,
                          onPressed: () => removeFromCart(eachCoffee));
                    }),
              ),

              // Pay Button
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Center(
                    child:
                        Text("Pay Now", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
