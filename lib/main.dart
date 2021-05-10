import 'package:flutter/material.dart';
import 'package:widget/video_player/splashscreen.dart';
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
      home:Splash()/*MyStatefulWidget(),*/


    );
  }
}
