import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffF5F5F5),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(child: Text("Hello")),
          ),
        ));
  }
}
