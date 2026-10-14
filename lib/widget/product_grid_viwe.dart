import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../model/product.dart';
import 'product_card.dart';

class ProductGridView extends StatelessWidget {
  final List<Product> products;
  final bool isMobile;

  const ProductGridView({
    super.key, required this.products, required this.isMobile,});
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: EdgeInsets.all(16),
      crossAxisCount: isMobile ? 2 : 4,
      crossAxisSpacing: 12, mainAxisSpacing: 12,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Center(
          child: ConstrainedBox(
            constraints:BoxConstraints(maxWidth: 300,
            ),
            child: ProductCard(product: products[index],
            ),
          ),
        );
      },
    );
  }
}