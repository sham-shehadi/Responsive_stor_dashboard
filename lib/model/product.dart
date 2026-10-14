class Product {
  final String name;
  final String category;
  final double price;
  final String image;

  Product({
    required this.name, required this.category, required this.price, required this.image,});

   static final List<Product> products = [
    Product(
      name: 'Sony WH-1000X',
      category: 'Electronics',
      price: 348,
      image: 'lib/assets/image/img.png',
    ), Product(
      name: 'Apple Watch',
      category: 'Wearables',
      price: 399,
      image: 'lib/assets/image/img_1.png',
    ), Product(
      name: 'Nike Air Zoom',
      category: 'Footwear',
      price: 120,
      image: 'lib/assets/image/img_2.png',
    ), Product(
      name: 'Leather Bag',
      category: 'Accessorie',
      price: 150,
      image: 'lib/assets/image/img_3.png',
    ), Product(
      name: 'Ray-Ban Sunglasses',
      category: 'Accessorie',
      price: 150,
      image: 'lib/assets/image/img_4.png',
    ), Product(
      name: 'Mechanical Keyboard',
      category: 'Electronics',
      price: 89,
      image: 'lib/assets/image/img_5.png',
    ), Product(
      name: 'Ceramic Mugs',
      category: 'Home',
      price: 15,
      image: 'lib/assets/image/img_6.png',    ), Product(
      name: 'Desk Lamp',
      category: 'Home',
      price: 45,
      image: 'lib/assets/image/img_7.png',    ),
  ];
}
