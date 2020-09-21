import 'package:fael_khair/Screens/add_mission.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
          }),
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
                "images/image4.png",
                fit: BoxFit.fill,
              ),
            ),
            title: Text(
              "صحة",
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

//
// Scaffold(
//     body: ListView(
//   children: <Widget>[
//     Container(
//       height: data.size.height / 3,
//       width: data.size.width,
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('images/image1.jpg'), fit: BoxFit.fill),
//           gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [Colors.deepPurpleAccent, Colors.deepPurple])),
//       child: Center(
//         child: Text(
//           "التعليم",
//           style: TextStyle(color: Colors.white, fontSize: 35),
//         ),
//       ),
//     ),
//     Container(
//       width: data.size.width,
//       padding: data.padding,
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: DropdownButton(
//               icon: Icon(Icons.attach_money),
//               items: _currecy.map((String dropDownStringItem) {
//                 return DropdownMenuItem<String>(
//                   value: dropDownStringItem,
//                   child: Text(dropDownStringItem),
//                 );
//               }).toList(),
//               onChanged: (String newValueSelected) {
//                 setState(() {
//                   this._currentItemSelected = newValueSelected;
//                 });
//               },
//               value: _currentItemSelected,
//             ),
//           ),
//           Expanded(
//             child: DropdownButton(
//               icon: Icon(Icons.attach_money),
//               items: _currecy.map((String dropDownStringItem) {
//                 return DropdownMenuItem<String>(
//                   value: dropDownStringItem,
//                   child: Text(dropDownStringItem),
//                 );
//               }).toList(),
//               onChanged: (String newValueSelected) {
//                 setState(() {
//                   this._currentItemSelected = newValueSelected;
//                 });
//               },
//               value: _currentItemSelected,
//             ),
//           ),
//           Expanded(
//             child: DropdownButton(
//               icon: Icon(Icons.attach_money),
//               items: _currecy.map((String dropDownStringItem) {
//                 return DropdownMenuItem<String>(
//                   value: dropDownStringItem,
//                   child: Text(dropDownStringItem),
//                 );
//               }).toList(),
//               onChanged: (String newValueSelected) {
//                 setState(() {
//                   this._currentItemSelected = newValueSelected;
//                 });
//               },
//               value: _currentItemSelected,
//             ),
//           ),
//         ],
//       ),
//     ),
//     Padding(
//       padding: EdgeInsets.all(20),
//       child: Container(
//         child: Card(
//             elevation: 6.0,
//             child: Column(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     CircleAvatar(
//                       backgroundColor: Colors.black,
//                       radius: 45,
//                       backgroundImage: AssetImage('images/mazin.JPG'),
//                     ),
//                     Container(
//                       width: 50,
//                     ),
//                     Text("This the title of the Mission")
//                   ],
//                 ),
//                 Text("The mission Describtion"),
//                 Container(
//                   height: 70,
//                 ),
//                 Row(
//                   //crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Icon(
//                       Icons.library_music,
//                       size: 45,
//                     ),
//                     Container(
//                       width: 70,
//                     ),
//                     Icon(
//                       Icons.library_music,
//                       size: 45,
//                     ),
//                     Container(
//                       width: 70,
//                     ),
//                     Icon(
//                       Icons.library_music,
//                       size: 45,
//                     ),
//                   ],
//                 ),
//               ],
//             )),
//       ),
//     ),
//     Container(
//       width: data.size.width * 3 / 4,
//       height: data.size.height * 1 / 4,
//       child: Card(
//           elevation: 6.0,
//           child: Column(
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   CircleAvatar(
//                     backgroundColor: Colors.black,
//                     radius: 45,
//                     backgroundImage: AssetImage('images/mazin.JPG'),
//                   ),
//                   Container(
//                     width: 50,
//                   ),
//                   Text("This the title of the Mission")
//                 ],
//               ),
//               Text("The mission Describtion"),
//               Container(
//                 height: 70,
//               ),
//               Row(
//                 //crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                   Container(
//                     width: 70,
//                   ),
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                   Container(
//                     width: 70,
//                   ),
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                 ],
//               ),
//             ],
//           )),
//     ),
//     Container(
//       width: data.size.width * 3 / 4,
//       height: data.size.height * 1 / 4,
//       child: Card(
//           elevation: 6.0,
//           child: Column(
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   CircleAvatar(
//                     backgroundColor: Colors.black,
//                     radius: 45,
//                     backgroundImage: AssetImage('images/mazin.JPG'),
//                   ),
//                   Container(
//                     width: 50,
//                   ),
//                   Text("This the title of the Mission")
//                 ],
//               ),
//               Text("The mission Describtion"),
//               Container(
//                 height: 70,
//               ),
//               Row(
//                 //crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                   Container(
//                     width: 70,
//                   ),
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                   Container(
//                     width: 70,
//                   ),
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                 ],
//               ),
//             ],
//           )),
//     ),
//     Container(
//       width: data.size.width * 3 / 4,
//       height: data.size.height * 1 / 4,
//       child: Card(
//           elevation: 6.0,
//           child: Column(
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   CircleAvatar(
//                     backgroundColor: Colors.black,
//                     radius: 45,
//                     backgroundImage: AssetImage('images/mazin.JPG'),
//                   ),
//                   Container(
//                     width: 50,
//                   ),
//                   Text("This the title of the Mission")
//                 ],
//               ),
//               Text("The mission Describtion"),
//               Container(
//                 height: 70,
//               ),
//               Row(
//                 //crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                   Container(
//                     width: 70,
//                   ),
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                   Container(
//                     width: 70,
//                   ),
//                   Icon(
//                     Icons.library_music,
//                     size: 45,
//                   ),
//                 ],
//               ),
//             ],
//           )),
//     ),
//   ],
// )
//     //

//     );
