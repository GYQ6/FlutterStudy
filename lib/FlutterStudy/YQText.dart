import 'package:flutter/material.dart';

class YQText extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Center(
       child: Text(
         "flutter study Text flutter study Text flutter study Text flutter study Text flutter study Text flutter study Textflutter study Text flutter study Text flutter study Text",
         textAlign: TextAlign.center,
         maxLines: null,// 设置为null 行数不限制
         //overflow: TextOverflow.ellipsis, //设置剪切效果
         style: new TextStyle(
           fontSize: 18,
           fontStyle: FontStyle.italic,
           color: Colors.deepOrangeAccent,
         ),
       ),
      ),
    );
  }
}


