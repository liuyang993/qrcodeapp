import 'dart:async';
//import 'dart:html';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'myscenemodel.dart';
import 'tracelistview.dart';  
import 'scenelist.dart';
import 'testscenelist.dart';
import 'package:flutter/cupertino.dart';
import 'addpersonalsite.dart';


class ScanScreen extends StatefulWidget {
  @override
  _ScanState createState() => new _ScanState();
}

class _ScanState extends State<ScanScreen> {
  String barcode = "";

  List<SceneList> sceneList = SceneList.scenelist;

  @override


  
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          //title: new Text('QR Code Scanner'),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //     Image.asset(
              //    'img/loading_3.png',
              //     fit: BoxFit.contain,
              //     height: 32,
              // ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text('High5'))
            ],
          ),
          backgroundColor: Colors.green,
        ),
        body : SingleChildScrollView(
          child : Column(children: <Widget>[
        
        Container(
          color:Colors.white,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                    'Personal Site',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      //fontWeight: FontWeight.w600,
                      fontSize: 16,
                      
                    ),
              ),
              FlatButton.icon(
                color: Colors.white,
                icon: Icon(Icons.add), //`Icon` to display
                label: Text('Add'), //`Text` to display
                onPressed: _goAddPersonalSite,
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            //color: Colors.black, 
          ),
          //color:Colors.white,
          height: 200,
          child: ListView.builder(
          shrinkWrap: true, 
          //itemCount: sceneList.length,
          itemCount: 2,          
          padding: const EdgeInsets.only(top: 8),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            final int count =
            sceneList.length > 10 ? 2 : 2;
            //sceneList.length > 10 ? 10 : sceneList.length;
            return TestSceneListView(
              callback: () {},
              sceneData: sceneList[index],
            );
          },
        ), 

        ),        

        Padding(
              padding: const EdgeInsets.only(
                  left: 5, right: 10, top: 3, bottom: 1),
        child: Container(
          color:Colors.yellow,
          height: 30,
          child: RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.green,
                    color: Colors.white,
                    onPressed: (){},
                    child: new Text("See more site"),
                  ),


        ),        
        ),


        Padding(
              padding: const EdgeInsets.only(
                  left: 5, right: 10, top: 20, bottom: 1),
        child:       Container(
          color:Colors.white,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                    'Business Site',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      //fontWeight: FontWeight.w600,
                      fontSize: 16,
                      
                    ),
              ),
              FlatButton.icon(
                color: Colors.white,
                icon: Icon(Icons.add), //`Icon` to display
                label: Text('Add'), //`Text` to display
                onPressed: () {

                },
              ),
            ],
          ),
        ),
        ),        

        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            //color: Colors.black, 
          ),
          //color:Colors.white,
          height: 200,
          child: ListView.builder(
          shrinkWrap: true, 
          //itemCount: sceneList.length,
          itemCount: 2,          
          padding: const EdgeInsets.only(top: 8),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            final int count =
            sceneList.length > 10 ? 2 : 2;
            //sceneList.length > 10 ? 10 : sceneList.length;
            return TestSceneListView(
              callback: () {},
              sceneData: sceneList[index],
            );
          },
        ), 

        ),        
        Padding(
              padding: const EdgeInsets.only(
                  left: 5, right: 10, top: 3, bottom: 1),
        child: Container(
          color:Colors.yellow,
          height: 30,
          child: RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.green,
                    color: Colors.white,
                    onPressed: (){},
                    child: new Text("See more site"),
                  ),


        ),        
        ),

        ], 
      ),
        ),

        );
  }

  Future scan() async {
    try {
      String result = await BarcodeScanner.scan();
      setState(() => this.barcode = result);

    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }


    void _goAddPersonalSite() {
    // Navigator.of(context).pushAndRemoveUntil(
    //     CupertinoPageRoute(builder: (BuildContext context) => AddPersonalSite()),
    //     (Route<dynamic> route) => false);


      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddPersonalSite()),
      );


    }


}