import 'package:flutter/material.dart';
/*层叠布局*/
class YQStackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var stack = Stack(
      alignment: FractionalOffset(0.5, 0.9),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage("http://a.hiphotos.baidu.com/zhidao/wh=450,600/sign=0fb8c8d170c6a7efb973a022c8ca8367/0b46f21fbe096b631e8d335e0a338744ebf8ac2c.jpg"),
          radius:50.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          padding: EdgeInsets.all(5),
          child: Text("gyq"),
        )
      ],

    );
    return Scaffold(
      appBar: AppBar(title: Text("Stackidget")),
      body: Center(
        child: stack,
      ),

    );
  }
}