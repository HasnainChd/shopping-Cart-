import 'package:flutter/material.dart';
import 'package:shoping_cart/Pages/shop_page.dart';

import '../components/my_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
     ShopPage(),
     const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context)=>IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
             children: [
               Image.asset('lib/images/nikee.png',color: Colors.white,),
               Divider(color: Colors.grey.shade700,),
               const  Padding(
                 padding:  EdgeInsets.only(left: 12),
                 child: ListTile(
                   leading: Icon(Icons.home,color: Colors.white,),
                   title: Text('Home',style: TextStyle(color: Colors.white),),
                 ),
               ),
               const  Padding(
                 padding:  EdgeInsets.only(left: 12),
                 child: ListTile(
                   leading: Icon(Icons.info,color: Colors.white,),
                   title: Text('About',style: TextStyle(color: Colors.white),),
                 ),
               ),
             ],
           ),
            const  Padding(
              padding:  EdgeInsets.only(left: 12),
              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text('Logout',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[selectedIndex],
    );
  }
}
