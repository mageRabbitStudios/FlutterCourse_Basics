import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Products extends StatelessWidget {
  final List<String> products;

  //constructor, this automatically takes an argument and stores it into local property with the same name
  Products(this.products);

  static const double cardMargin = 50;
  static const double cardBlurRadius = 10.0;
  static const double cardMinHeight = 50;
  static const String imageAssetLocation = 'assets/food.jpg';

  @override
  Widget build(BuildContext context) {

    double cardMaxHeight = 100 - products.length.toDouble() * 5;

    return Column(
        children: products
            .map(
            //maps the date of products into the list
              (element) => Container(
                  constraints: BoxConstraints(
                    minHeight: cardMinHeight,
                    maxHeight: cardMaxHeight,
                  ),
                  decoration: BoxDecoration(
//                    color: Colors.black,
                    boxShadow: [ new BoxShadow(
                      color: Colors.grey,
                      blurRadius: cardBlurRadius,
                    )]
                  ),
                  margin: const EdgeInsets.all(cardMargin),
                  child: Card(

                    child: Column(
                      children: <Widget>[
                        Image.asset(imageAssetLocation),
                        Text(element)
                      ],
                    ),

                  ),
              ),
            )
            .toList());
  }
}

void determineMaxHeight(@required int numberOfProducts) {

}
