import 'package:flutter/material.dart';
import 'package:product_nav_app/ProductBox.dart';
import 'Product.dart';
import 'ProductPage.dart';
import 'RatingBox.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Production',),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  List<Product> items = Product.getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(item: items[index],),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return ProductPage(item: this.items[index]);
                  },)
              );
            },
          );
        },
      )
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductPage(item: Product(
          "Pixel",
          "Pixel is the most feature-full phone ever", 800,
          "pixel.jpg"
      ),),
    );
  }

}
