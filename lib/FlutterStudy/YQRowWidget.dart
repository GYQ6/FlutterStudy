import 'package:flutter/material.dart';
/*横向布局*/
class YQRowWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("RowWidget")),
      body: Row(
        children: <Widget>[
          Expanded(child: RaisedButton(//灵活布局
            onPressed: (){},
            color: Colors.yellow,
            child: Text("red bt"),
          )),
          RaisedButton(
            onPressed: (){},
            color: Colors.orange,
            child: Text("orange bt"),
          ),

        ],
      ),
    );
  }
}