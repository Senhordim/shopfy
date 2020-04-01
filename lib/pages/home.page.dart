import 'dart:convert';

import 'package:flutter/material.dart';

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
                search(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 30),
                ),
                categoryList(),
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
                  child: productList(),
                ),
              ],
            )),
      ),
    );
  }
}

Widget search() {
  return Container(
    padding: EdgeInsets.only(left: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    height: 60,
    child: Row(
      children: <Widget>[
        Icon(Icons.search),
        Container(
          width: 276,
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        )
      ],
    ),
  );
}

Widget categoryList() {
  return Container(
    height: 90,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        categoryitem(),
        categoryitem(),
        categoryitem(),
        categoryitem(),
        categoryitem(),
        categoryitem()
      ],
    ),
  );
}

Widget categoryitem() {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(64))),
    child: Image.asset("assets/images/Icon_Devices.png"),
  );
}

Widget productList() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      productCard(),
      productCard(),
      productCard(),
    ],
  );
}

Widget productCard() {
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
        Container(
          child: Image.asset(
            "assets/images/product-1.png",
            width: 170,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Nike Dry-Fit Long Sleeve",
          style: TextStyle(
              fontSize: 16,
              color: Color(0xff333333),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nike",
          style: TextStyle(fontSize: 14, color: Color(0xff333333)),
        ),
        Text(
          "\$ 100.00",
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff03963a),
              fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}
