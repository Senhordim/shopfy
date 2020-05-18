import 'package:flutter/material.dart';
import 'package:shopfy/pages/cart.page.dart';
import 'package:shopfy/pages/home.page.dart';
import 'package:shopfy/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(children: [HomePage(), CartPage(), LoginPage()]),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: ,
      ),
    );
  }
}
