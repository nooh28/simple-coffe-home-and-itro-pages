import 'package:coffe2/details/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>
          Column(children: [Text('My Cart', style: TextStyle(fontSize: 20))]),
    );
  }
}
