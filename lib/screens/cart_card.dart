import 'package:flutter/material.dart';
import 'package:stepper/model/cart_item.dart';

class CartCard extends StatelessWidget{
  final CartItem cartItem;
  final VoidCallback increment;
  final VoidCallback decrement;

  const CartCard({
    super.key,
    required this.cartItem,
    required this.decrement,
    required this.increment
  });

  @override
  Widget build(BuildContext context) {
       return Card(
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(cartItem.product.imageUrl, width: 60, height: 60),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.product.name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),

                  SizedBox(height: 5),

                  Row(
                    children: [
                      Text(
                        'KES ${cartItem.itemTotal}',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 47, 152),
                        ),
                      ),
                      Spacer(flex: 1),

                      Row(
                        children: [
                          IconButton(onPressed: decrement,
                           icon: Icon(Icons.remove),
                           ),
                           Text(cartItem.quantity.toString()),
                           IconButton(onPressed: increment, 
                           icon: Icon(Icons.add),
                           ),
                        ],
                      )
                     
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  }
