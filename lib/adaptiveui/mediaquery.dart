
import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('LayoutBuilder Example')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,
                color: Colors.blue,
                child: Center(child:  Text("I cover 30% of the screen height and 100% of screen width!",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  child: Text("I'm a responsive button!",
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center),
                ),
              ),
            ])
      /*Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            child: Center(
              child: Text("I'm a responsive button!",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center),
            ),
          ),
        ),*/
  // Above Example Container having a  Full size of width set using media query  and container having padding

      /* Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Text('I cover the whole width of the screen!')
        )*/
      // Above Example Container having a  Full size of width  and Set Color

      /*Container(
            width: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: Center(
                child: Text('I cover the whole width of the screen!')
            )

        )*/

    );
  }
}