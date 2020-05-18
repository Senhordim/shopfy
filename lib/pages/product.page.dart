import 'package:flutter/material.dart';

class ProductoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white.withOpacity(0),
                elevation: 0.0,
                expandedHeight: 500,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset("assets/images/product-10.png",
                      width: double.infinity, fit: BoxFit.fitWidth),
                ),
              )
            ];
          },
          body: ListView(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Text("Dry Fit Long Sleev",
                      style: TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold))),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("by Nike"),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Dry Fit Long Sleev",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          )),
    );
  }
}