import 'package:flutter/material.dart';
    
class YQGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
//      body: GridView.count(
//        padding: EdgeInsets.all(20.0),
//        crossAxisSpacing: 10.0,
//        crossAxisCount: 4,
//        children: <Widget>[
//          const Text("I am GYQ"),
//          const Text("I am GYQ1"),
//          const Text("I am GYQ2"),
//          const Text("I am GYQ3"),
//          const Text("I am GYQ4"),
//          const Text("I am GYQ5"),
//          const Text("I am GYQ6"),
//        ],
//      ),
     body: GridView(
       scrollDirection: Axis.vertical,
       padding: EdgeInsets.all(10),
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 3, //列数
             mainAxisSpacing: 8.0,//行间距
             crossAxisSpacing: 8.0, //列间距
             childAspectRatio: 0.7 //width / height

         ),
       children: <Widget>[
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
         Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg", fit: BoxFit.cover),
       ],
     ),
    );
  }
}
    
    
    