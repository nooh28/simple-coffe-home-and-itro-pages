import 'package:coffe2/classes/coffe_class.dart';
import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  void Function()? onTap;
  Coffe coffe;
  CoffeTile({super.key, required this.coffe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // imge
          Image.asset(coffe.imgpath),
          SizedBox(height: 12),
          //description
          Text(coffe.descripe),
          // price + name
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //name
                    Text(
                      coffe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    //price
                    Text(
                      coffe.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: () => context,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black87),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
                //add button
              ],
            ),
          ),
        ],
      ),
      //
    );
  }
}
