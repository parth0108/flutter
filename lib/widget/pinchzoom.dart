import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pinch_zoom_image_updated/pinch_zoom_image_updated.dart';

void main() => runApp(new PinchZoom());

class PinchZoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pinch Zoom Image',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pinch Zoom Image'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: PinchZoomImage(
                image: Image.asset('images/logo.png'),
                zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                hideStatusBarWhileZooming: true,
                onZoomStart: () {
                  print('Zoom started');
                },
                onZoomEnd: () {
                  print('Zoom finished');
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: PinchZoomImage(
                image: CachedNetworkImage(
                  imageUrl: 'https://i.imgur.com/tKg0XEb.jpg',
                ),
                zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
