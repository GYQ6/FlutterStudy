import 'package:flutter/material.dart';

/*
class YQNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("navigator"),),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage()));
          },
          child: Text("Pushdetail"),
        )
      )
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detail"),),
      body: Center(
        child: RaisedButton(
            child: Text("back"),
            onPressed: (){
              Navigator.pop(context);
            }),
      )

    );
  }
}
*/

class Product{
  final String title;
  final String dec;
  Product(this.title, this.dec);
}

final List<Product> products = [
  Product("商品1", "商品1详情"),
  Product("商品2", "商品2详情"),
  Product("商品3", "商品4详情"),
  Product("商品3", "商品4详情"),
  Product("商品5", "商品5详情"),
  Product("商品6", "商品6详情")
];


class ProductList extends StatelessWidget {

  //ProductList({Key key,@required this.products}):super(key:key)
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("商品列表"),),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),
            subtitle: Text(products[index].dec),
            onTap: (){
              _pushDetailPage(context, index);
            },
          );
        },
      ),
    );
  }

  _pushDetailPage(BuildContext context, int index) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> YQDetailPage(product: products[index],)),
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result")));
  }
}

class YQDetailPage extends StatelessWidget {
  final Product product;
  YQDetailPage({@required this.product}):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title),),
      body: Center(
        child: RaisedButton(
          child: Text("click 返回"),
            onPressed:(){
            Navigator.pop(context, "18738193980");
            }
        ),
      ),
    );
  }
}











