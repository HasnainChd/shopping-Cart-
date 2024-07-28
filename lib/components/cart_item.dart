import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/cart.dart';
import '../Models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;

  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius:BorderRadius.circular(10),
          ),
          child:
            ListTile(
              leading: Image.asset(widget.shoe.imagePath),
              title: Text(widget.shoe.name),
              subtitle: Text(widget.shoe.price),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: removeFromCart,
              ),
            )
        ),
      ),
    );
  }
}
