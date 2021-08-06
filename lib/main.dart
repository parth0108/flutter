import 'package:flutter/material.dart';
import 'package:widget/adaptiveui/aspectRatio.dart';
import 'package:widget/adaptiveui/fittedbox.dart';
import 'package:widget/adaptiveui/fractional.dart';
import 'package:widget/adaptiveui/layoutbuilder.dart';
import 'package:widget/adaptiveui/mediaquery.dart';
import 'package:widget/adaptiveui/oriantationbuilder.dart';
import 'package:widget/menuiteam.dart';
import 'package:widget/horizontalLIstView.dart';
import 'package:widget/theamChange/theamChange.dart';
import 'package:widget/video_player/splashscreen.dart';
import 'bottomnavigation/mainfile.dart';
import 'google map/googlemap.dart';
import 'video_player/videoplayer.dart';
import 'widget/BlockPattern /counter.dart';

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
      //home:Splash()/*MyStatefulWidget(),*/
    // home:MyAPP1()/*MyStatefulWidget(),*/
     // home:LayOutBuilderExample()/*MyStatefulWidget(),*
      // home:MediaQueryExample()/*MyStatefulWidget(),*/
     //home:FittedBoxPage()/*MyStatefulWidget(),*/
      //home:MyHomePage()/*MyStatefulWidget(),*/
      home:MyStatefulApp()/*MyStatefulWidget(),*/
     // home:FractionalExample()/*MyStatefulWidget(),*/


    );
  }
}
