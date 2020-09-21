import 'package:fael_khair/Screens/sign_in.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class SignUp_page extends StatefulWidget {
  @override
  _SignUp_pageState createState() => _SignUp_pageState();
}

// ignore: camel_case_types
class _SignUp_pageState extends State<SignUp_page> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            centerTitle: true,
            expandedHeight: data.size.height / 7,
            backgroundColor: Color(0xFF6F35A5),
            flexibleSpace: FlexibleSpaceBar(
            ),
            title: Text(
              "Sign Up",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        width: data.size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child:  TextField(
                          cursorColor: Color(0xFF6F35A5),
                          decoration: InputDecoration(
                            labelText:  "User Name",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        width: data.size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child:  TextField(
                          cursorColor: Color(0xFF6F35A5),
                          decoration: InputDecoration(
                            labelText:  "Email",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        width: data.size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child:  TextField(
                          cursorColor: Color(0xFF6F35A5),
                          decoration: InputDecoration(
                            labelText:  "Confirm Email",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        width: data.size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child:  DropdownButton(items: null, onChanged: null,

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        width: data.size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child:  TextField(
                          cursorColor: Color(0xFF6F35A5),
                          obscureText : true,
                          decoration: InputDecoration(
                            labelText:  "Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        width: data.size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child:  TextField(
                          cursorColor: Color(0xFF6F35A5),
                          obscureText : true,
                          decoration: InputDecoration(
                            labelText:  "Confirm Password",
                            border: InputBorder.none,
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
                                  return SignIn_page();
                                }),
                              );
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          )

        ],),
    );
  }
}
