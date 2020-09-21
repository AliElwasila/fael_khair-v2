import 'package:fael_khair/Screens/add_mission.dart';
import 'package:flutter/material.dart';
class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_circle,
            size: 45,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return AddMission();
              }),
            );
          }
          ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            centerTitle: true,
            expandedHeight: data.size.height / 4,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/image2.jpg",
                fit: BoxFit.fill,
              ),
            ),
            title: Text(
              "اخرى",
              style: TextStyle(fontSize: 25),
            ),
          ),


          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                var n = 5;
                if (index > n) return null;
                return listitem();
              },
              childCount: 5,
            ),
          )
        ],
      ),
    );
  }
}

Widget listitem() => Container(
  width: 250,
  height: 350,
  color: Colors.white,
  child: Card(
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    color: Colors.white,
    elevation: 10,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("images/mazin.JPG"),
              maxRadius: 40,
            ),
            SizedBox(
              width: 100,
            ),
            Text("this is the title"),
          ],
        ),
        Container(
          height: 150,
          child: Text("this is a massion"),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.thumb_up),
            Icon(Icons.turned_in_not),
            Icon(Icons.add_circle_outline)
          ],
        )
      ],
    ),
  ),
);