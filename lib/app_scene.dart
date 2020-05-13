import 'package:flutter/material.dart';
import 'guidescene.dart';


class AppScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'scan',
      debugShowCheckedModeBanner: false,
      home: GuideScene(),
      //home: RootScene(),


      //body: Image(image: AssetImage('graphics/background.png')),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('123'),
      //   ),
      //   body: Image(image: AssetImage('img/guide1.png')),
      // ),
    );
  }
}