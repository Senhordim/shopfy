import 'package:flutter/material.dart';
import 'package:shopfy/pages/product.page.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String brand;
  final double price;

  ProductCard(
      {@required this.image,
      @required this.name,
      @required this.brand,
      @required this.price,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 12),
      color: Color(0xffCECECE),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductoPage(
                            image: image,
                            title: name,
                            brand: brand,
                            description: "fdfdffdd",
                            price: price,
                          )));
            },
            child: Container(
              child: Image.asset(
                image,
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff333333),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            brand,
            style: TextStyle(fontSize: 14, color: Color(0xff333333)),
          ),
          Text(
            "\$ $price",
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff03963a),
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
