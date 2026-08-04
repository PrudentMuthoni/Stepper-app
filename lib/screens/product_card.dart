import 'package:flutter/material.dart';
import 'package:stepper/model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

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
              child: Image.network(product.imageUrl, width: 120, height: 120),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name),
                  SizedBox(height: 8),

                  Text(product.description),
                  SizedBox(height: 5),

                  Text('KES ${product.price}', style: TextStyle(color:Color.fromARGB(255, 23, 47, 152))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
