
import 'package:flutter/material.dart';

class Model {
   Model({ this.value = 0 });

  final int value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other))
      return true;
    if (other.runtimeType != runtimeType)
      return false;
    final Model otherModel = other;
    return otherModel.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class ViewController extends StatefulWidget {
  _ViewControllerState createState() => _ViewControllerState();
}

class _ViewControllerState extends State<ViewController> {
  Model currentModel = Model();

  void updateModel(Model newModel) {
    if (newModel != currentModel) {
      setState(() {
        currentModel = newModel;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        updateModel(Model(value: currentModel.value + 1));
      },
      child: Text('Hello World ${currentModel.value}'),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: ViewController()),
      ),
    );
  }
}
