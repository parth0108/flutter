import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final title = "ListView List";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: List.generate(choices.length, (index) {
              return Center(
                child: ChoiceCard(
                  choice: choices[index],
                  item: choices[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detail(choice: choices[index])),
                    );
                  },
                ),
              );
            })));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'This is a Car', icon: Icons.directions_car),
  const Choice(title: 'This is a Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'This is a Boat', icon: Icons.directions_boat),
  const Choice(title: 'This is a Bus', icon: Icons.directions_bus),
  const Choice(title: 'This is a Train', icon: Icons.directions_railway),
];


class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
        this.choice,
        this.onTap,
        @required this.item,
        this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Card(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.topLeft,
                  child: Icon(
                    choice.icon,
                    size: 80.0,
                    color: textStyle.color,
                  )),
              new Expanded(
                  child: new Container(
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      choice.title,
                      style: null,
                      textAlign: TextAlign.left,
                      maxLines: 5,
                    ),
                  )),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
    );
  }
}

class Detail extends StatelessWidget {
  final Choice choice;
  Detail({this.choice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Column(
        children: <Widget>[
          Text("${choice.title}"),
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}