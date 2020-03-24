import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          color: Color(0xffF5F5F5),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              search(),
            ],
          )),
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
          width: 300,
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              // labelText: "Search",
              // labelStyle: TextStyle(
              //     color: Colors.blue,
              //     fontWeight: FontWeight.w300,
              //     fontSize: 16)
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
