import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qrcodeapp/profileedit.dart';
import 'tracelist.dart';
import 'dart:ui' as ui;
import 'app_navigator.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Profile',
          style:  TextStyle(
            color: Colors.grey[800],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
      ),
//      floatingActionButton: FloatingActionButton(
//        child: pressed ?Text('White', style: TextStyle(color: Colors.grey[850]),):Text('Dark'),
//        backgroundColor: pressed ?Colors.grey[100]:Colors.grey[850],
//        onPressed: () {
//          setState(() {
//            pressed = !pressed;
//          });
//        },
//      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.grey[100],
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  CircleAvatar(
                    backgroundImage: null,
                    radius: 40.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Test User',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75,
                        color: Colors.grey[500] ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'TestUser@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14.0,
                      letterSpacing: 0.75,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color:Colors.grey[100],
              child: ListTile(
                leading: Icon(
                  Icons.border_color,
                  color:Colors.grey[800],
                ),
                title: Text(
                  'Modifier Profle',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    AppNavigator.push(context, Profileedit());

                  },
                  color: Colors.grey[400],
                ),
              ),
            ),
            Divider(
              height: 0.20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[100],
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[800],
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {},
                  color: Colors.grey[400],
                ),
              ),
            ),
            Divider(
              height: 0.20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[100],
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.grey[800],
                ),
                title: Text(
                  'History Trace',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    AppNavigator.push(context, tracelistview());
                  },
                  color: Colors.grey[400],
                ),
              ),
            ),
            Divider(
              height: 0.20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color: Colors.grey[100],
              child: ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.grey[800],
                ),
                title: Text(
                  'Reserved',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {},
                  color: Colors.grey[400],
                ),
              ),
            ),
            Divider(
              height: 0.20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              color:Colors.grey[100],
              child: ListTile(
                leading: Icon(
                  Icons.error,
                  color: Colors.grey[800],
                ),
                title: Text(
                  'Reserved',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0,
                    letterSpacing: 0.5,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {},
                  color: Colors.grey[400],
                ),
              ),
            ),
//            Divider(
//              height: 0.20,
//            ),
//            Container(
//              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
//              color: pressed ?Colors.grey[700]:Colors.grey[100],
//              child: ListTile(
//                leading: Icon(
//                  Icons.cancel,
//                  color: Colors.red[900],
//                ),
//                title: Text(
//                  'Deconnexion',
//                  style: TextStyle(
//                    color: Colors.grey[500],
//                    fontSize: 15.0,
//                    letterSpacing: 0.5,
//                  ),
//                ),
//                trailing: IconButton(
//                  icon: Icon(Icons.navigate_next),
//                  onPressed: () {},
//                  color: Colors.grey[400],
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}