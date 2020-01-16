import 'package:flutter/material.dart';

class YQCardWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("CardView"),),
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("小明"),
              subtitle: Text("xxxxxxxxxxxx"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              title: Text("小花"),
              subtitle: Text("xxxxxxxxxxxx"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              title: Text("小黄"),
              subtitle: Text("xxxxxxxxxxxx"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              title: Text("庆余年"),
              subtitle: Text("xxxxxxxxxxxx"),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}