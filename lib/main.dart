import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo App'),
        ),
      ), //home of the widget
    );
  }
}test