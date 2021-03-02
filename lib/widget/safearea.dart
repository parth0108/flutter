import 'package:flutter/material.dart';
import 'package:widget/widget/expanded.dart';



class WidgetSafeArea extends StatefulWidget {
  @override
  _WidgetSafeAreaState createState() => _WidgetSafeAreaState();
}

class _WidgetSafeAreaState extends State<WidgetSafeArea> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ExpandedWidget(),),);
          },
          child: Text(
              'My Widget: This is my widget. It has some content that I don\'t want '
                  'blocked by certain manufacturers who add notches, holes, and round corners.'),
        ),
      ),
    );
  }
}
