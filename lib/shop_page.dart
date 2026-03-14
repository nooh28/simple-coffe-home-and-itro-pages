import 'package:coffe2/classes/coffe_class.dart';
import 'package:coffe2/details/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'details/coffe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void adCoffeToCart(Coffe coffe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // welcome text
          Text(
            'Shop now',
            style: TextStyle(fontSize: 30, color: Colors.grey[800]),
          ),
          SizedBox(height: 25),
          // detailed text
          Text(
            'you can add items to cart from here',
            style: TextStyle(color: Colors.grey[600]),
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                Coffe coffe = value.getCoffeList()[index];
                return CoffeTile(
                  coffe: coffe,
                  onTap: () => adCoffeToCart(coffe),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Divider(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
