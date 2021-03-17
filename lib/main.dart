import 'package:flutter/material.dart';
import 'package:widget/statemanagment/main2.dart';
import 'package:widget/widget/inheritedmodel/inheritedmodel.dart';
import 'package:widget/widget/product.dart';

import 'shareprefernce/loginpage.dart';
import 'widget/imagePicker.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: Scaffold(
        backgroundColor: Color(0xff84FFFF),
        body:ImagePick()
        //PageViewDemo()
        //Top10Widget()
        // here you can whatever  Example
        // FutureBulider()
        //ExpandedWidget(),
        //WidgetSafeArea(),
      )/*MyStatefulWidget(),*/


    );
  }
}
