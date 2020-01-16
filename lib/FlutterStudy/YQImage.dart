import 'package:flutter/material.dart';

class YQImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text( "YQImage Demo"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                "http://a.hiphotos.baidu.com/zhidao/wh=450,600/sign=0fb8c8d170c6a7efb973a022c8ca8367/0b46f21fbe096b631e8d335e0a338744ebf8ac2c.jpg"
            )
          ),
        ),
      ),
    );
  }
}