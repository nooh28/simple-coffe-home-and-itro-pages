import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        child: GNav(
          color: Colors.grey[700],
          activeColor: Colors.black,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(icon: Icons.home, text: 'home'),
            GButton(icon: Icons.shopping_bag, text: 'cart'),
          ],
        ),
      ),
    );
  }
}
