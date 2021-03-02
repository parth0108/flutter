import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),

          Expanded(
            flex:3,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),

          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }


}

