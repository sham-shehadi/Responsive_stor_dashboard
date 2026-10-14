import 'package:flutter/material.dart';
import 'package:task_responsive/model/product.dart';
import 'package:task_responsive/widget/product_grid_viwe.dart';
import '../widget/menuWidget.dart';
import '../widget/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double breakPoint = 600;

    final isMobile = MediaQuery.of(context).size.width < breakPoint;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title:  Text('Product Inventory'),
      ),
      drawer: isMobile ? Drawer(child: SafeArea(child: MenuWidget(),),) : null,
      body: Row(
        children: [
          if (!isMobile)
            SizedBox(width: 220, child: Material(color: Colors.white, child: MenuWidget(),),),
          Expanded(
            child: ProductGridView(
             products: Product.products,
              isMobile: isMobile,
            ),
          ),],
      ),
    );
  }
}