import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:qrcodeapp/profileedit.dart';

import 'dart:ui' as ui;
import 'app_navigator.dart';
import 'rootscene.dart';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class AddPersonalSite extends StatefulWidget {
  @override
  _AddPersonalSiteState createState() => _AddPersonalSiteState();
}

class _AddPersonalSiteState extends State<AddPersonalSite> {
  //bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        title: Text(
          'Add Personal Site',
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
        Container ( 
          //color: Colors.red,
          margin: const EdgeInsets.only(top: 20,left: 20,right: 20, bottom: 100),
          // decoration: BoxDecoration(
          //   border: Border.all(color: Colors.blueAccent)
          // ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red[500],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
                     
        child: Column(
        children: <Widget>[  
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 7.5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.archive,
                                    color: Colors.black,
                                  ),
                                  labelText: 'Input Scene Name',
                                  // helperText: 'Your full name',
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                maxLines: 1,
                              ),
                      ),
                    ],
                  ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 7.5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 1.5,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        15.0,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.indigo,
                                        width: 1.5,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        15.0,
                                      ),
                                    ),
                                  ),
                                  // prefixIcon: Icon(
                                  //   Icons.note,
                                  //   color: Colors.black,
                                  // ),
                                  labelText: 'Description',
                                  // helperText: 'Your bio',
                                  labelStyle: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                maxLines: 5,
                              ),
                      ),
                    ],
                  ),
                  ),

                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 7.5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ),      

                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                                  'Begin Date',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    //fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                            ),
                      ),                       


                    ],
                  ),
                  ),

                    Positioned(
                      //right: MediaQuery.of(context).size.width * .20,
                      right: 10,             
                      child:  Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        //child: show ? CircularProgressIndicator() : Container(),
                        child : Row(
                          children: <Widget>[ 
                            
                          Text(
                                  'Begin Date',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    //fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                            ),

                            GestureDetector(
                            onTap: () => {},
                            child: Image.asset('img/hotel/hotel_1.png',height: 40,width: 40,), 
                          ),


                          ],
                        ),                  
                      ),
                    )


                    ],
                  ),


                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 7.5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ),      

                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                                  'Begin Date',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    //fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                            ),
                      ),                       


                    ],
                  ),
                  ),

                    Positioned(
                      //right: MediaQuery.of(context).size.width * .20,
                      right: 10,             
                      child:  Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        //child: show ? CircularProgressIndicator() : Container(),
                        child : Row(
                          children: <Widget>[ 
                            
                          Text(
                                  'Begin Date',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    //fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                            ),

                            GestureDetector(
                            onTap: () => {},
                            child: Image.asset('img/hotel/hotel_1.png',height: 40,width: 40,), 
                          ),


                          ],
                        ),                  
                      ),
                    )


                    ],
                  ),


      ],
      
      
      
      ),
      ),


      Container(
        margin: const EdgeInsets.only(top: 5,left: 20,right: 20, bottom: 0),
        width: 400,
        //margin: const EdgeInsets.only(top: 20, bottom: 1.5),
        child:  RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          //side: BorderSide(color: Colors.red)
        ),
        padding: const EdgeInsets.all(8.0),
        textColor: Colors.white,
        color: Colors.green,
        onPressed: (){},
        child: new Text("Save"),
      ),

      ),




      ],
      ),
    );
  }


}