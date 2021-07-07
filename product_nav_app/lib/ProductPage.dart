import 'package:flutter/material.dart';
import 'package:product_nav_app/Product.dart';
import 'package:product_nav_app/RatingBox.dart';

class ProductPage extends StatelessWidget{
  final Product item;

  const ProductPage({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.name),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/images/' + this.item.image,),),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(this.item.name, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(this.item.description),
                        Text('Price: ' + this.item.price.toString()),
                        RatingBox()

                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}