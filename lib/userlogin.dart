import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qrcodeapp/profileedit.dart';

import 'dart:ui' as ui;
import 'app_navigator.dart';
import 'rootscene.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  //bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        title: Text(
          'Sign In',
          style:  TextStyle(
            color: Colors.grey[800],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
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
      body: Column(children: <Widget>[  
                  Container(
                    margin: const EdgeInsets.only(top: 60, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: 'Username',
                        // helperText: 'Your full name',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 7.5),
                    child: TextFormField(
                      obscureText:true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        labelText: 'Password',
                        // helperText: 'Your full name',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),

                  Container(
                    width: 360,
                    margin: const EdgeInsets.only(top: 20, bottom: 7.5),
                    child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      //side: BorderSide(color: Colors.red)
                    ),
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: _goMain,
                    child: new Text("Sign In"),
                  ),

                  ),

                  Container(
                    width: 360,
                    margin: const EdgeInsets.only(top: 20, bottom: 7.5),
                    child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      //side: BorderSide(color: Colors.red)
                    ),
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: () {},
                    child: new Text("Anonymously"),
                  ),

                  ),




      ],
      
      
      
      ),
    );
  }



    void _goMain() {
    Navigator.of(context).pushAndRemoveUntil(
        CupertinoPageRoute(builder: (BuildContext context) => MyApp()),
        (Route<dynamic> route) => false);
  }


}