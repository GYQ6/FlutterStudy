
/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  // ignore: invalid_override
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "gyq",
      home: Scaffold(
        body: Center(
//          child: Text(
//            "new project, 非常讨厌当前工作非常讨厌当前工作非常讨厌当前工作非常讨厌当前工作",
//            textAlign: TextAlign.left,
//            maxLines: 1,
//            overflow: TextOverflow.ellipsis,
//            style: TextStyle(
//              fontSize: 14.0,
//              color: Colors.red,
//              decoration: TextDecoration.underline,
//              decorationStyle: TextDecorationStyle.dashed,
//
//            ),
//          ),
        

//        child: Container(
//          child: new Text("技术胖 Hello", style: TextStyle(fontSize: 30)),
//          alignment: Alignment.topLeft,
//          width: 200.0,
//          height: 200.0,
//          //color: Colors.black12,
//          padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
//          margin: EdgeInsets.all(10.0),
//          decoration: new BoxDecoration(
//            gradient: const LinearGradient(
//                colors: [Colors.red, Colors.blue]
//            ),
//            border: Border.all(width: 2.0, color: Colors.black)
//          ),
//        ),


//        child: Container(
//          child: new Image.network(
//            "http://a.hiphotos.baidu.com/zhidao/wh=450,600/sign=0fb8c8d170c6a7efb973a022c8ca8367/0b46f21fbe096b631e8d335e0a338744ebf8ac2c.jpg",
//            fit: BoxFit.scaleDown,
//            //color: Colors.red,//color colorBlendMode 图片混合
//            //colorBlendMode: BlendMode.modulate,
//            repeat: ImageRepeat.repeatX,
//          ),
//          width: 300.0,
//          height: 300.0,
//          color: Colors.blue,
//        ),
        
        ),
      ),
    );
  }
}
*/

/*

import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: new AppBar(
            title: Text("listView")
        ),
        body: new ListView(
          children: <Widget>[
            /*
            new ListTile(
              leading: new Icon(Icons.perm_identity),
              title: new Text("gyq"),
            ),
            new ListTile(
              leading: new Icon(Icons.perm_identity),
              title: new Text("gyq"),
            ),
            new ListTile(
              leading: new Icon(Icons.perm_identity),
              title: new Text("gyq"),
            )
            */
            new Image.network("http://a.hiphotos.baidu.com/zhidao/wh=450,600/sign=0fb8c8d170c6a7efb973a022c8ca8367/0b46f21fbe096b631e8d335e0a338744ebf8ac2c.jpg"),
            new Image.network("http://a.hiphotos.baidu.com/zhidao/wh=450,600/sign=0fb8c8d170c6a7efb973a022c8ca8367/0b46f21fbe096b631e8d335e0a338744ebf8ac2c.jpg"),
            new Image.network("http://a.hiphotos.baidu.com/zhidao/wh=450,600/sign=0fb8c8d170c6a7efb973a022c8ca8367/0b46f21fbe096b631e8d335e0a338744ebf8ac2c.jpg"),
            new Image.network("http://a.hiphotos.baidu.com/zhidao/wh=450,600/sign=0fb8c8d170c6a7efb973a022c8ca8367/0b46f21fbe096b631e8d335e0a338744ebf8ac2c.jpg")


          ],
        ),
      ),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
void main() => runApp(MyApp(
  items: new List<String>.generate(1000, (i)=>"item $i")
));

class MyApp extends StatelessWidget{
  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: new AppBar(
            title: Text("listView")
        ),
        body:new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return new ListTile(
              title: new Text("${items[index]}"),
            );
          },
        )
     )
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 100.0,
          color: Colors.red,
        ),
        new Container(
          width: 100.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 100.0,
          color: Colors.orange,
        ),
        new Container(
          width: 100.0,
          color: Colors.deepOrangeAccent,
        ),
      ],
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:flutter_app/FlutterStudy/YQText.dart';
import 'package:flutter_app/FlutterStudy/YQImage.dart';
import 'package:flutter_app/FlutterStudy/YQListView.dart';
import 'package:flutter_app/FlutterStudy/YQGridView.dart';
import 'package:flutter_app/FlutterStudy/YQRowWidget.dart';
import 'package:flutter_app/FlutterStudy/YQColumnWidget.dart';
import 'package:flutter_app/FlutterStudy/YQStackWidget.dart';
import 'package:flutter_app/FlutterStudy/YQPositionedWidget.dart';
import 'package:flutter_app/FlutterStudy/YQCardWidget.dart';
import 'package:flutter_app/FlutterStudy/YQNavigator.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo..."),
        ),
        body: MyListView()
      )
    );
  }
}

class MyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        new ListTile(
          leading: Icon(Icons.cloud),
          title: Text("TextDemoGYQ"),
          onTap: (){
            print("clickgyq");
            Navigator.of(context).push(new PageRouteBuilder(
                opaque: false,
                pageBuilder: (BuildContext context, _, __) {
                  return new YQText();
                },
                transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                  return new FadeTransition(
                    opacity: animation,
                    child: new SlideTransition(
                        position: new Tween(
                          begin: const Offset(0, 1),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child),
                  );
                }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.confirmation_number),
          title: Text("ContainerDemo"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQImage();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.image),
          title: Text("ImageDemo"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQImage();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("ListViewDemo"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQListView();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("GridViewDemo"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQGridView();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("RowWidget"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQRowWidget();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("ColumnWidget"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQColumnWidget();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("stackWidget"),
          onTap: (){
          Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
            return YQStackWidget();
          }));
        },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("positionedWidget"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQPositionedWidget();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("CardWidget"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return YQCardWidget();
            }));
          },
        ),
        new ListTile(
          leading: Icon(Icons.library_books),
          title: Text("Navigator"),
          onTap: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, _, __){
              return ProductList();
            }));
          },
        ),
      ],
    );
  }
}