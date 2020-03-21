import 'package:flutter/material.dart';
import 'package:shopfy/pages/signup.page.dart';
import 'package:shopfy/widgets/social_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xffF5F5F5),
            padding: EdgeInsets.only(
              top: 80,
              left: 20,
              right: 20,
              bottom: 40,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1, 2.0),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
                  height: 400,
                  padding: EdgeInsets.only(
                    top: 38,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Welcome,",
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Sigin in to continue",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            FlatButton(
                              child: Text("Sign Up"),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupPage()));
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              child: Text("Forgot your password?"),
                              onPressed: () {},
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            width: MediaQuery.of(context).size.width,
                            child: FlatButton(
                              child: Text(
                                "OK",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ))
                      ]),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 15),
                  child: Text(
                    "- OR -",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ),
                SocialButton(
                  text: "Login In with Facebook",
                  image: Image.asset("assets/images/facebook.png"),
                  heightImage: 24,
                  onPress: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                SocialButton(
                  text: "Login In with Google",
                  image: Image.asset("assets/images/google.png"),
                  heightImage: 24,
                  onPress: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
