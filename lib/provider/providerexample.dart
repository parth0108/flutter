import 'package:flutter/material.dart';

class DemoData extends StatefulWidget {
  DemoData({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DemoDataState createState() => _DemoDataState();
}

class _DemoDataState extends State<DemoData> {
  List<Animal> animals = new List();
  String newName;
  TextEditingController nctrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    animals = [
      Animal(id: 1, name: 'cat'),
      Animal(id: 2, name: 'dog'),
      Animal(id: 3, name: 'mouse'),
      Animal(id: 4, name: 'horse'),
      Animal(id: 5, name: 'frog'),
    ];
  }

  _changePetName() {
    newName = nctrl.text;
    Navigator.pop(context, newName);
    return newName;
  }

  Future<String> _showDialog(String name) async {
    nctrl.text = name;
    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          elevation: 5,
          backgroundColor: Colors.blue,
          title: Text(
            "Rename this pet",
          ),
          content: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: nctrl,
                    onChanged: (e) {
                      // setState(() {});
                    },
                  ),
                ],
              )),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop(nctrl.text);
              },
            ),
            FlatButton(
              color: Colors.green,
              child: Text(
                "Submit",
              ),
              onPressed: () {
                var updateName = _changePetName();
                return updateName;
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: animals.length,
              itemBuilder: (BuildContext context, int index) {
                var pet = animals[index];
                return ListTile(
                  key: ValueKey(pet.id),
                  enabled: true,
                  onTap: () async {
                    var rename = await _showDialog(pet.name);
                    if (rename != null) {
                      pet.name = rename;
                      setState(() {});
                    }
                    // setState(() {
                    //   pet.name = 'bob';
                    // });
                  },
                  title: Text(pet.name),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Animal {
  final int id;
  String name;

  Animal({this.id, this.name});

  factory Animal.fromJson(Map<dynamic, dynamic> json) {
    return new Animal(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}