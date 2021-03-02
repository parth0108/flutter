import 'package:flutter/material.dart';
class OpecityWidget extends StatefulWidget {
  @override
  _OpecityWidgetState createState() => _OpecityWidgetState();
}

class _OpecityWidgetState extends State<OpecityWidget> {
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

          Opacity(
            opacity: 0.0,
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
