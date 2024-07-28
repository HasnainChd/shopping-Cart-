import 'package:flutter/material.dart';

import '../Models/shoe.dart';

class ShoeTile extends StatelessWidget {
   final Shoe shoe;
   final void Function()? onTap;
  const ShoeTile({super.key, required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 30,right: 20),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe image
          Image.asset(shoe.imagePath),
          const SizedBox(
            height: 10,
          ),
          //shoe description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(textAlign: TextAlign.center, shoe.description),
          ),
          const SizedBox(height: 10),
          // shoe name and price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$${shoe.price}',
                      style: const TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
