import 'package:flutter/material.dart';
/*垂直布局
* //垂直布局 (垂直方向为主轴, 水平方向为副轴)
* //水平布局 (水平方向为主轴, 垂直方向为副轴)
*
* */
class YQColumnWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("RowWidget")),
      body: Center(child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("I am gyq"),
          Expanded(child: Text("ios 工程师 喜欢看电影 运动")),
          Text("4年工作经验")
        ],
      ))
    );
  }
}