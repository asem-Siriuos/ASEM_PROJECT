import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // قائمة المنتجات 
  final List<List<dynamic>> _shopItems = const [
    // [ اسم الصنف, سعر الصنف, رابط الصورة, لون الحلفية ]
    ["فودكا", "400", "lib/images/avocado.png", Colors.green],
    ["موز شرعبي", "1000", "lib/images/banana.png", Colors.orange],
    ["دجاج الدبعي", "4500", "lib/images/chicken.png", Colors.brown],
    ["ماء لوجينا", "300", "lib/images/water.png", Colors.blue],
    //////////////////////
    ["عمب الشام", "2000", "lib/images/ampp.png", Colors.lightGreenAccent],
    ["تفاح ", "400", "lib/images/apple.png", Colors.redAccent],
    ["هند", "200", "lib/images/core.png", Colors.greenAccent],
    ["عنب اسود ", "2500", "lib/images/griev.png", Colors.purple],
    ["ليم", "200", "lib/images/lemon.png", Colors.green],
    ["برتقال ", "400", "lib/images/orange.png", Colors.brown],
    ["رومان ", "800", "lib/images/roman.png", Colors.pink],
    ["شمام ", "2000", "lib/images/shamam.png", Colors.lightGreen],
  ];

  // قائمة اصناف السلة
  List<List<dynamic>> _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // الاضافة الى السلة
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // الحذف من السلة
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // عملية جمع اسعار الاصناف
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
