import 'package:flutter/material.dart';
import 'package:shopfy/widgets/category/category_item.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(
            image: Image.asset("assets/images/Icon_Devices.png"),
          ),
          CategoryItem(
            image: Image.asset("assets/images/Icon_Gadgets.png"),
          ),
          CategoryItem(
            image: Image.asset("assets/images/Icon_Gaming.png"),
          ),
          CategoryItem(
            image: Image.asset("assets/images/Icon_Mens_Shoe.png"),
          ),
          CategoryItem(
            image: Image.asset("assets/images/Icon_Womens_Shoe.png"),
          ),
        ],
      ),
    );
  }
}
