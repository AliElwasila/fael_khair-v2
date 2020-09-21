import 'package:flutter/material.dart';
// ignore: camel_case_types
class Sponsors_page extends StatefulWidget {
  @override
  _Sponsors_pageState createState() => _Sponsors_pageState();
}

// ignore: camel_case_types
class _Sponsors_pageState extends State<Sponsors_page> {
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
                "our Sponsors",
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

          ],)
    );
  }
  Widget listitem() => Container(
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("images/2.png"),fit: BoxFit.fill),
  ),
      width: 250,
      height: 400,
      child: Column(
        children: <Widget>[
          SizedBox(height: 25.0,),
          Expanded(child: Image(image: AssetImage("images/image1.jpg"),),),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFF1E6FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: FlatButton(
              child: Text(
                "Zain Sudan",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
          Divider(thickness: 5.0,color: Colors.black,indent: 20.0,endIndent: 20.0,),
          SizedBox(height: 45.0,),
        ],
      ),
    );
}
