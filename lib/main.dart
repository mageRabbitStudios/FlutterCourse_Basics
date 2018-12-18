import 'package:flutter/material.dart';
import 'package:flutter_app_test2/products/product_manager.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Basics App'),),
        body: ProductManager('Starting Product'),
      ),
    );
  }
}
