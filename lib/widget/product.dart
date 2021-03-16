import 'package:flutter/material.dart';
class MyProductDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          children: [
            ProductBox(
                name: "iPhone",
                description: "iPhone is the stylist phone ever", price: 1000,
                image: "frame-1.png"),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever", price: 800,
                image: "frame-2.png"),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever", price: 800,
                image: "frame-3.png"),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever", price: 800,
                image: "frame-4.png"),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever", price: 800,
                image: "frame-5.png"),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever", price: 800,
                image: "frame-6.png"),


          ],
        ),
      ),
    );
  }
}


class ProductBox  extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2), height: 120,
      child: Card(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Image.asset("assets/images/" + image),
             Expanded(child: Container(
               padding: EdgeInsets.all(5),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text(this.name,style: TextStyle(fontWeight:FontWeight.bold)),
                   Text(this.description),
                   Text("Price: " + this.price.toString()),
                 ],

                 )
               ),
             )
           ],
         ),
      ),
    );
  }
}


