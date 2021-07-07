import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_nav_app/Product.dart';
import 'package:product_nav_app/RatingBox.dart';

class ProductBox extends StatelessWidget {
  final Product item;

  ProductBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/' + item.image),
          Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.item.description),
                    Text('Price: ' + this.item.price.toString()),
                    RatingBox()
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
