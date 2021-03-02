
import 'package:flutter/material.dart';

class StreamBuilderIssue extends StatefulWidget {
  @override
  _StreamBuilderIssueState createState() => _StreamBuilderIssueState();
}

class _StreamBuilderIssueState extends State<StreamBuilderIssue> {
  Future<List<String>> futureList;
  List<String> itemList = [
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
  ];

  @override
  void initState() {
    futureList = fetchList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: StreamBuilder(
                stream: futureList.asStream(),
                builder: (context, snapshot){
                  if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index){
                        return Text(snapshot.data[index]);
                      },
                    );
                  }else{
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
          ),
          RaisedButton(
            onPressed: goToAnotherView,
            child: Text('Next View'),
          ),
          RaisedButton(
            onPressed: addItem,
            child: Text('AddItem'),
          )
        ],
      ),
    );
  }

  Future<List<String>> fetchList(){
    return Future.delayed(Duration(seconds: 2), (){
      return itemList;
    });
  }

  void goToAnotherView(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context){
          return StreamBuilderIssueNewView(addItem);
        })
    ).then((res){
      setState(() {
        futureList = fetchList();
      });
    });
  }

  void addItem(){
    itemList.add('anotherItem');
  }
}

class StreamBuilderIssueNewView extends StatelessWidget {
  final Function buttonAction;

  StreamBuilderIssueNewView(this.buttonAction);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('New view'),
            RaisedButton(
              onPressed: buttonAction,
              child: Text('AddItem'),
            )
          ],
        ),
      ),
    );
  }
}