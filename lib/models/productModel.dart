class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product(
      {required this.name, required this.price, required this.imageUrl});

  static const List<Product> products = [
    Product(name: "El kremi", price: 20, imageUrl: "assets/elkrem.jpg"),
    Product(name: "Şampuan", price: 10, imageUrl: "assets/sampuan.jpg"),
    Product(name: "Yüz kremi", price: 30, imageUrl: "assets/elkrem2.jpeg"),
  ];
}
