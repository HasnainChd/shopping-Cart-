import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/cart.dart';
import '../Models/shoe.dart';
import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0,bottom: 15),
            child: Text(
              'My Cart',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: ListView.builder(
             itemCount: value.getUserCart().length,
              itemBuilder: (context, int index) {
               //get shoe
                Shoe individualShoe=value.getUserCart()[index];
            return CartItem(shoe: individualShoe);
          }))
        ],
      ),
    );
  }
}
