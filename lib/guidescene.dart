
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rootscene.dart';

/// 
class GuideScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GuideSceneState();
}

class GuideSceneState extends State<GuideScene> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
        child: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                  left: 0, right: 0, top: 160, bottom: 1),
          child:Container(
            child: Image.asset(
              'img/hotel/hotel_2.png',
              //fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),       
          ),
          ),

          Padding(
              padding: const EdgeInsets.only(
                  left: 0, right: 0, top: 20, bottom: 1),
          child: Container(
            child:  Text(
                  'Super Check In',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red
                          .withOpacity(0.8)),
                ),

          ),
          ),

          Padding(
              padding: const EdgeInsets.only(
                  left: 70, right: 0, top: 20, bottom: 1),
          child: Container(
            child:  Text(
                  'For everybody health , please Scan QR Code',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red
                          .withOpacity(0.8)),
                ),

          ),
          ),          

          Padding(
              padding: const EdgeInsets.only(
                  left: 0, right: 0, top: 20, bottom: 1),
          child: Container(
            child:  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.green,
                    color: Colors.white,
                    onPressed: _goMain,
                    child: new Text("Get Started"),
                  ),

          ),
          ),                    

        ],
            ))
        // body: Card(
        //         child: IntrinsicHeight(
        //           child: Row(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: <Widget>[
        //               Container(
        //                 width: 20.0,
        //                 color: Colors.red,
        //               ),
        //               // Expanded(...)
        //             ],
        //           ),
        //         )
        //       ),
            );
  }

  void _goMain() {
    Navigator.of(context).pushAndRemoveUntil(
        CupertinoPageRoute(builder: (BuildContext context) => MyApp()),
        (Route<dynamic> route) => false);
  }
}
