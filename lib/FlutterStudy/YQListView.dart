import 'package:flutter/material.dart';

class YQListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listView"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new Container(
            height: 100.0,
            color: Colors.red,
          ),
          new Container(
            height: 100.0,
            color: Colors.deepOrange,
          ),
          new Container(
            height: 100.0,
            color: Colors.orange,
          ),
          new Container(
            height: 100.0,
            color: Colors.deepOrangeAccent,
          ),
        ],
      ),
    );
  }
}