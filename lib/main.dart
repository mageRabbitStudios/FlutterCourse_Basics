import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //create state
    return _DemoAppState();
  }
}

class _DemoAppState extends State<DemoApp> {

  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basics App'),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text('Add Product'),
              onPressed: () {
                setState(() {
                  _products.add('Advanced Food Tester');
                });
              },
            ),
          ),
          Column(children: _products
              .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element)
                  ],
                ),
              )
            ).toList()
          ),
        ]),
      ),
    );
  }
}