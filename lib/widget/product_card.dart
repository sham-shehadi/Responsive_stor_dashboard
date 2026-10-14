import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(padding:  EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Image.asset(product.image,
              height: 60, width: double.infinity, fit: BoxFit.contain,
            ),
            SizedBox(height: 12),
            Text(product.name, maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(product.category),
            SizedBox(height: 8),
            Text('\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                color: Color(0xFF4527E8),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}