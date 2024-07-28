import 'package:flutter/foundation.dart';
import 'package:shoping_cart/Models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air-force ,107',
        description:
            'Knows for His on-court performance, combined with the iconic design of the sneakers',
        price: '120',
        imagePath: 'lib/images/shoe1.jpg'),
    Shoe(
        name: 'Nike Air-force',
        description:
        'Knows for His on-court performance, combined with the iconic design of the sneakers',
        price: '150',
        imagePath: 'lib/images/shoe3.jpg'),
    Shoe(
        name: 'AirJorden',
        description:
        'Knows for His on-court performance, combined with the iconic design of the sneakers',
        price: '120',
        imagePath: 'lib/images/shoe2.jpg'),
    Shoe(
        name: 'AirJorden',
        description:
        'Knows for His on-court performance, combined with the iconic design of the sneakers',
        price: '120',
        imagePath: 'lib/images/shoe4.jpg'),
    Shoe(
        name: 'AirJorden',
        description:
        'Knows for His on-court performance, combined with the iconic design of the sneakers',
        price: '120',
        imagePath: 'lib/images/shoe5.jpg'),
    Shoe(
        name: 'AirJorden',
        description:
        'Knows for His on-court performance, combined with the iconic design of the sneakers',
        price: '120',
        imagePath: 'lib/images/shoe7.jpg')
  ];

  List<Shoe> userCart=[];

  List<Shoe>getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
