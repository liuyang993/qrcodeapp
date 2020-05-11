import 'package:flutter/material.dart';
import 'tracelistmodel.dart';
import 'tracelistview.dart';

class tracelistview extends StatefulWidget {
  @override
  _tracelistviewState createState() => _tracelistviewState();
}

class _tracelistviewState extends State<tracelistview> {
  List<TraceList> traceList = TraceList.tracelist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.blue,
        child: ListView.builder(
          itemCount: traceList.length,
          padding: const EdgeInsets.only(top: 8),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            final int count =
            traceList.length > 10 ? 10 : traceList.length;

            return HotelListView(
              callback: () {},
              hotelData: traceList[index],
            );
          },
        ),
      ),


    );





  }


}