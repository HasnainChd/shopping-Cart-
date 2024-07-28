import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/cart.dart';
import '../Models/shoe.dart';
import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({
    super.key,
  });

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Successfully added to Cart'),),);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, index) =>
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Search',
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                textAlign: TextAlign.center,
                'everyone flys some fly longer than others',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0,bottom: 10),
                    child: Text(
                      'Hot Picks 🔥',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Text(
                      'See-All',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, int index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      onTap: ()=>addShoeToCart(shoe),
                      shoe: shoe,
                    );
                  },
                ),
              ),
            ],
          ),
    );
  }
}
