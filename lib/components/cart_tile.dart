import '../models/coffee.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CartTile({super.key, required this.coffee, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(icon: const Icon(Icons.delete), onPressed: onPressed),
      ),
    );
  }
}
