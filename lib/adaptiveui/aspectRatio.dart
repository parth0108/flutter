
import 'package:flutter/material.dart';


class MyAPP1 extends StatelessWidget {
  const MyAPP1({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      //width: double.infinity,
      width: 100,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: 0.2,
        child: Container(
          width: 100.0,
          height: 50.0,
          color: Colors.green,
        ),
      ),
    );
  }
}
