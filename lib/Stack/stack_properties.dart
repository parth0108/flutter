import 'package:flutter/material.dart';



class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Stack Widget Example"),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              /// fit: It will control the size of non-positioned children widgets in the stack. It has three types: loose, expand and passthrough.
              /// The loose used to set the child widget small, the expand attribute makes the child widget as large as possible, and the passthrough set the child widget depending on its parent widget.
              ///textDirection: It determines the text direction. It can draw the text either ltr (left to right) or rtl (right to the left).
              ///alignment: It determines how the children widgets are positioned in the stack. It can be top, bottom, center, center-right, etc.
              children: <Widget>[
                // Max Size Widget
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Top Widget: Green',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Middle Widget',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'Bottom Widget',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                ),
              ],
            ),
          )
      ),
    );
  }
}