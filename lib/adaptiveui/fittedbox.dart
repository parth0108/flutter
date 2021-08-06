import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FittedBoxPage extends StatefulWidget {
  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}class _FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Layout Widget Demo"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            // ListOf Properties
            fit: BoxFit.fill,
            alignment: Alignment.topLeft,
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Understand With FittedBox",
                      style: TextStyle(fontSize: 20,color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    child:
                    Image.asset("assets/powered_by.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );}
}