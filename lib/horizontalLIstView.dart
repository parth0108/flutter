import 'package:flutter/material.dart';


void main() {
  runApp(MyHorizontalSample1());
}

class MyHorizontalSample1 extends StatelessWidget{

  Container MyArticles(String imageVal, String heading, String subHeading){

    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: [
            Image.asset(
                'images/frame-1.png'
            ),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Horizontal List View',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Flutter Horizontal List View'
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MyArticles('images/img_offer_01.jpeg', 'Dhaka', 'Lorem Ipsum'),
              MyArticles('images/img_offer_01.jpeg', 'Khulna', 'Lorem Ipsum'),
              MyArticles('images/img_offer_01.jpeg', 'Barisal', 'Lorem Ipsum'),
              MyArticles('images/img_offer_01.jpeg', 'Rangpur', 'Lorem Ipsum'),
              MyArticles('images/img_offer_01.jpeg', 'Chittahong', 'Lorem Ipsum'),
              MyArticles('images/img_offer_01.jpeg', 'Mymensingh', 'Lorem Ipsum'),

            ],
          ),
        ),
      ),
    );
  }
}