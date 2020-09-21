import 'package:fael_khair/Screens/about_page.dart';
import 'package:fael_khair/Screens/donate_page.dart';
import 'package:fael_khair/Screens/gifts_page.dart';
import 'package:fael_khair/Screens/notifications_page.dart';
import 'package:fael_khair/Screens/sponsors_page.dart';
import 'page_Viewer.dart';
import 'profile.dart';
import 'package:flutter/material.dart';
import 'missons_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    // ignore: non_constant_identifier_names
    final DrawerHeader = UserAccountsDrawerHeader(
      margin: EdgeInsets.all(10),
      onDetailsPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Profile();
          }),
        );
      },

      accountName: Text(
        "User Name",
        style: TextStyle(fontSize: 25),
      ),
      accountEmail: Text("user.name@email.com",style: TextStyle(fontSize: 20),),
      currentAccountPicture: CircleAvatar(
        maxRadius: 70,
        backgroundImage: AssetImage("images/mazin.JPG"),
      ),
    );
    final drawerItems = Container(
      padding: EdgeInsets.only(
          top: data.padding.top,
          bottom: data.padding.bottom,
          ),
        color: Color(0xFFce93d8),
      child: ListView(
        children: <Widget>[
          DrawerHeader,
          Divider(
            color: Color(0xFF6F35A5),
            thickness: 1.0,
          ),
          SizedBox(height: 15.0,),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "Missions",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Missons_page();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Notifications_Page();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "Donate",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Donate_page();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "Gifts",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Gifts_page();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "Sponsors",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Sponsors_page();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "About Fael Khair",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About_page();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              size: 30,
            ),
            title: Text(
              "Exit",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );

    //var data = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xFF6F35A5), //Color(0xFF7b1fa2),// Color(0xFFE1BEE7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0.0,
        actions: <Widget>[
          InkWell(
            child: Icon(
              Icons.search,
              size: 35,
            ),
            onTap: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: drawerItems,
      ),
      body: sideMenu(context),
    );
  }
}

Widget sideMenu(BuildContext context) {
  final data = MediaQuery.of(context);
  return Container(
    width: data.size.width,
    height: data.size.height,

    child: Container(
      padding: EdgeInsets.only(
          top: data.padding.top + 10,
          bottom: data.padding.bottom + 10,
          left: data.padding.left + 75,
      ),

      child: ListView(
      children: <Widget>[
        view("الصحة", "images/image4.png", context, 0),
        view("التعليم", "images/image3.jpg", context, 1),
        view("تعمير", "images/image1.jpg", context, 2),
        view("غذاء", "images/image5.jpg", context, 3),
        view("اخرى", "images/image2.jpg", context, 4),

      ],
    ),)
  );
}

Widget view(textv, imagev, BuildContext context, nav) {
  var data = MediaQuery.of(context);
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return PageViewer(
            initialPage: nav,
          );
        }),
      );
    },
    child: Container(
      width: data.size.width * 3 / 4,
      height: data.size.height * 1 / 4.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue,Colors.yellow]) ,
              image: DecorationImage(
                 image: AssetImage(imagev), fit: BoxFit.fill,
                colorFilter: ColorFilter.srgbToLinearGamma(),
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
                textv,
                style: TextStyle(fontSize: 35, color: Colors.white,fontWeight: FontWeight.bold),
              ),
    ),
        //elevation: 10.0,
       // color: Colors.deepPurpleAccent,
  );
}
