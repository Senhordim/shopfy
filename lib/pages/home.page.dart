import 'package:flutter/material.dart';
import 'package:shopfy/widgets/category/category_list.dart';
import 'package:shopfy/widgets/product/product_card.dart';
import 'package:shopfy/widgets/product/product_list.dart';
import 'package:shopfy/widgets/search_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            color: Color(0xffF5F5F5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                SearchBox(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 30),
                ),
                CategoryList(),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Best Selling",
                      style: TextStyle(fontSize: 30),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("See all"),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 320,
                  child: ProductList(),
                ),
              ],
            )),
      ),
    );
  }
}
