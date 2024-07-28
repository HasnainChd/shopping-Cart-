
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
   const MyNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey.shade300,
      child: GNav(
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        gap: 8,
        onTabChange: onTabChange,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'cart',
          )
        ],
      ),
    );
  }
}
