import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';


/// Change MyApp from StatelessWidget to StatefulWidget
class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();

  /// Add an InheritedWidget-style static accessor so we can
  /// find our State object from any descendant & call changeTheme
  /// from anywhere.
  static _MyStatefulAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyStatefulAppState>();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  // define a state field for theme
  ThemeData _theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Themes',
      theme: _theme, // use theme field here
      home: MyHomePage(title: 'Change App Theme at Runtime'),
    );
  }

  /// Call changeTheme to rebuild app with a new theme
  void changeTheme({ThemeData theme}) {
    setState(() {
      _theme = theme;
    });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool status = false;


  void _incrementCounter() {
    ThemeData _theme =status ? ThemeData.dark() : ThemeData();
    MyStatefulApp.of(context).changeTheme(theme: _theme);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Switch(
          value: status,
          onChanged: (value) {
            setState(() {
              _incrementCounter();
              status = value;
              print(status);
            });
          },
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'You switched themes this many times, happy yet?:',
            ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),

    );
  }
}



