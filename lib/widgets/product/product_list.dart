import 'package:flutter/material.dart';
import 'package:shopfy/widgets/product/product_card.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ProductCard(
          image: "assets/images/product-10.png",
          name: "Camisa social club",
          brand: "Fernando Gloss",
          price: 232.2,
        ),
        ProductCard(
          image: "assets/images/product-1.png",
          name: "Cadeira Preta",
          brand: "Ginny",
          price: 120.2,
        ),
        ProductCard(
          image: "assets/images/product-4.png",
          name: "Carteira Slim",
          brand: "Cuty",
          price: 88.32,
        ),
      ],
    );
  }
}
