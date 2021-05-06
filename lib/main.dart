import 'package:flutter/material.dart';
import 'package:widget/widget/expanstiontiels.dart';
import 'package:widget/widget/pinchzoom.dart';
import 'package:widget/widget/silveraappbarwithtab.dart';
import 'package:widget/statemanagment/main2.dart';
import 'package:widget/widget/imagepickandcrop/imagePicker.dart';
import 'package:widget/widget/test.dart';

import 'provider/providerexample.dart';
import 'widget/BlockPattern /counter.dart';
import 'widget/foldable_sidebar.dart';
import 'widget/imagepickandcrop/imagepickandcropprofile.dart';


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
      home:CounterBlock()/*MyStatefulWidget(),*/


    );
  }
}
