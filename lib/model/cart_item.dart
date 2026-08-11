import 'package:stepper/model/product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity=1});

  double get itemTotal=> product.price * quantity;
}