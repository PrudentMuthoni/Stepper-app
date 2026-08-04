import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:stepper/model/product.dart';

class CartModel extends ChangeNotifier {
  final List<Product> _items = [];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  void addItem(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeItem(Product product) {
    _items.removeWhere((item) => item.name == product.name);
    notifyListeners();
  }
}
