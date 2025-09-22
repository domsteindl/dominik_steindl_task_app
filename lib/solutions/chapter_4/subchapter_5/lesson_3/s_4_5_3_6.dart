import 'package:flutter/material.dart';

final List<Product> products = [
  Product(name: "Apple", price: 0.99),
  Product(name: "Banana", price: 0.50),
  Product(name: "Orange", price: 0.75),
  Product(name: "Mango", price: 1.20),
  Product(name: "Pineapple", price: 2.00),
];

class S4536 extends StatelessWidget {
  const S4536({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: products
            .map((product) => ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text(product.name),
                  subtitle: Text("€${product.price.toStringAsFixed(2)}"),
                ))
            .toList());
  }
}

class Product {
  String name;
  double price;

  Product({
    required this.name,
    required this.price,
  });
}
