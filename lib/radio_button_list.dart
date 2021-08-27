import 'package:flutter/material.dart';

class DeMo extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return new MaterialApp(
    title: 'Test App',
    theme: new ThemeData(
      primarySwatch: Colors.red,
    ),
    home: new MyHome(),
  );
}
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<int> indexList = new List();


@override
Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('Selected ${indexList.length}  ' + indexList.toString()),
    ),
    body: new ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return new CustomWidget(
          index: index,
          callback: () {
            if (indexList.isNotEmpty) {
              indexList.clear();
            }
          },
        );
      },
    ),
  );
}
}

class CustomWidget extends StatefulWidget {
  final int index;
  final VoidCallback callback;

  const CustomWidget({Key key, this.index, this.callback}) : super(key: key);

  @override
  _CustomWidgetState createState() => new _CustomWidgetState();
}


class _CustomWidgetState extends State<CustomWidget> {
  bool selected = false;
  CustomWidget lastSelectedWidget;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        setState(() {
          lastSelectedWidget = widget;
          print(lastSelectedWidget.key);
          selected = !selected;
        });
        widget.callback();
      },
      child: new Container(
        margin: new EdgeInsets.all(5.0),
        child: new ListTile(
          title: new Text("Title ${widget.index}"),
          subtitle: new Text("Description ${widget.index}"),
        ),
        decoration: selected
            ? new BoxDecoration(color: Colors.black38, border: new Border.all(color: Colors.black))
            : new BoxDecoration(),
      ),
    );
  }
}