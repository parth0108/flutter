import 'package:flutter/material.dart';
import 'package:widget/widget/animatedContainer.dart';
import 'package:widget/widget/expanded.dart';
import 'package:widget/widget/fadeimage.dart';
import 'package:widget/widget/fadetransition.dart';
import 'package:widget/widget/futurebuilder.dart';
import 'package:widget/widget/safearea.dart';
import 'package:widget/widget/silverlistgride.dart';
import 'package:widget/widget/sliverappbar.dart';
import 'package:widget/widget/streambulider.dart';
import 'package:widget/widget/tabel.dart';

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
        body: StreamBuilderIssue()//FutureBulider()
        //ExpandedWidget(),
        //WidgetSafeArea(),
      )/*MyStatefulWidget(),*/


    );
  }
}
