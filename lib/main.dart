import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SnackBarPage()
    );
  }
}

class SnackBarPage extends StatelessWidget {
  List<String> _menuList = ["ซื้อของ", "โปรโมชั่น", "กรุณาอ่าน", "ติดต่อ"]

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        children: _menuList.map((String menuItem) {
          return FlatButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(menuItem),
              ));
            },
            child: Center(
              child: Text(
                menuItem,
                style: Theme
                    .of(context)
                    .textTheme
                    .headline,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

