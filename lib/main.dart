import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/sign_in.dart';

void main() => runApp(FaelKhair());

class FaelKhair extends StatefulWidget {
  @override
  _FaelKhairState createState() => _FaelKhairState();
}

class _FaelKhairState extends State<FaelKhair> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fael Khair',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: AnimatedSplashScreen(
          splash: Image(
              image: AssetImage("images/logo.png"),
              width: 350.0,
              height: 350.0,
            ),
        splashIconSize: 350.0,
        //duration: 10000,
        backgroundColor: Colors.white,
        //centered: true,
          splashTransition: SplashTransition.sizeTransition,
          animationDuration: Duration(milliseconds: 5000) ,
          nextScreen: SignIn_page(),
      ) ,
    );
  }
}
