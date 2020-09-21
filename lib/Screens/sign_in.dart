import 'package:fael_khair/Screens/home_page.dart';
import 'package:fael_khair/Screens/sign_up.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class SignIn_page extends StatefulWidget {
  @override
  _SignIn_pageState createState() => _SignIn_pageState();
}

// ignore: camel_case_types
class _SignIn_pageState extends State<SignIn_page> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 350,
            width: 350,
            margin: EdgeInsets.only(
              left: data.padding.left + 20,
                right: data.padding.right + 20,
                top: data.padding.top + 20,
              ),
            decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage("images/2.png"), fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: data.size.width * 0.9,
              decoration: BoxDecoration(
                color: Color(0xFFF1E6FF),
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextField(
                cursorColor: Color(0xFF6F35A5),
                decoration: InputDecoration(
                  labelText: "Email or user Name",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: data.size.width * 0.9,
              decoration: BoxDecoration(
                color: Color(0xFFF1E6FF),
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextField(
                cursorColor: Color(0xFF6F35A5),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: data.size.width * 0.6,
              decoration: BoxDecoration(
                color: Color(0xFFF1E6FF),
                borderRadius: BorderRadius.circular(29),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MyHomePage();
                    }),
                  );
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "New User ? Signup Please",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 35),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: data.size.width * 0.6,
              decoration: BoxDecoration(
                color: Color(0xFFF1E6FF),
                borderRadius: BorderRadius.circular(29),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignUp_page();
                    }),
                  );
                },
                child: Text(
                  "SignUP",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
