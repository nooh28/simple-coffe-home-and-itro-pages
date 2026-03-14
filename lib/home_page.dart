import 'package:coffe2/cart_page.dart';
import 'package:coffe2/details/my_nav_bar.dart';
import 'package:coffe2/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // control of bottom bar
  int selectedindex = 0;
  // function to controlbottom bar
  void navigateBottomBar(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  // list to display wedgits
  final List<Widget> _pages = [
    // shop page
    ShopPage(),

    //cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 25),
                Image.asset('lib/photo/coffee-beans.png', height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListTile(
                    leading: Icon(Icons.house, color: Colors.white),
                    title: Text(
                      'home page',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.medical_information,
                      color: Colors.white,
                    ),
                    title: Text('about', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.white),
                title: Text('Exit', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      body: _pages[selectedindex],
    );
  }
}
