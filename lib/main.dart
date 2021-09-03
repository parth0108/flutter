import 'package:flutter/material.dart';
import 'package:widget/FlutterLifeCycle/flutter_life_cycle_understand.dart';
import 'package:widget/GrideViewExample.dart';
import 'package:widget/Silver_properties/silver_app_bar.dart';
import 'package:widget/Stack/stack_properties.dart';
import 'package:widget/adaptiveui/aspectRatio.dart';
import 'package:widget/adaptiveui/fittedbox.dart';
import 'package:widget/adaptiveui/fractional.dart';
import 'package:widget/adaptiveui/layoutbuilder.dart';
import 'package:widget/adaptiveui/mediaquery.dart';
import 'package:widget/adaptiveui/oriantationbuilder.dart';
import 'package:widget/advance%20/global_key.dart';
import 'package:widget/advance%20/stream.dart';
import 'package:widget/firebase/Firebase_example.dart';
import 'package:widget/menuiteam.dart';
import 'package:widget/horizontalLIstView.dart';
import 'package:widget/radio_button_list.dart';
import 'package:widget/theamChange/theamChange.dart';
import 'package:widget/video_player/splashscreen.dart';
import 'bottomnavigation/mainfile.dart';
import 'game/game_practicle.dart';
import 'google map/googlemap.dart';
import 'instaDemo.dart';
import 'video_player/videoplayer.dart';

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
      //home:FireBaseExmple()/*MyStatefulWidget(),*/
     home:
     Silver_app_bar()/*MyStatefulWidget(),*/


    );
  }
}
