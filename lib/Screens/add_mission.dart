import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMission extends StatefulWidget {
  @override
  _AddMissionState createState() => _AddMissionState();
}

class _AddMissionState extends State<AddMission> {
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
            "Add Mission",
            style: TextStyle(fontSize: 25),
          ),
        ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    //padding: EdgeInsets.only(top: 50,left: 50,right: 50),
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
                            decoration: InputDecoration(
                              labelText:  "Mission Title",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: data.size.width * 0.9,
                          height: data.size.height * 1/4,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1E6FF),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child:  TextField(
                            maxLines: 20,
                            //obscureText: true,
                            //onChanged: onChanged,
                            cursorColor: Color(0xFF6F35A5),
                            decoration: InputDecoration(
                              labelText:  "Mission Details",
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
                              labelText:  "Mission Location",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          width: data.size.width * 0.9,
                          height : data.size.height * 0.15,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1E6FF),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child:  Row(
                            children: <Widget>[
                              Expanded(child: TextField(
                                cursorColor: Color(0xFF6F35A5),
                                decoration: InputDecoration(
                                  labelText:  "Number Of Participants",
                                  border: InputBorder.none,
                                ),
                              ),),
                              Expanded(child:Checkbox(value: false, onChanged: null,) )
                              ,
                               Expanded(child:Text("Any Number Of Participants") ),
                            ],
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
                              },
                              child: Text(
                                "Add Mission",
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
