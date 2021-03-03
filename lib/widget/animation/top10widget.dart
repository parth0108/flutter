import 'package:flutter/material.dart';
import 'package:widget/widget/animation/animatedwidggte.dart';

class Top10Widget extends StatefulWidget {
  @override
  _Top10WidgetState createState() => _Top10WidgetState();
}

class _Top10WidgetState extends State<Top10Widget>
    with SingleTickerProviderStateMixin {
  AnimationController myanimation;

  @override
  void initState() {
    super.initState();
    myanimation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: screenwidth > 200 ? AppBar() : null,
        // if app bar size greater then 100 then you can see app Bar
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.blue,
                    // Fitted Box Not Apply then Latter Scatterd
                    // Remove Fitted Box and See What Happen

                    child: FittedBox(child: Text(' Fitted Box Example ')),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    //  PlaceHolder Example

                    child: Placeholder(),
                  ),
                  Wrap(
                    // A widget that displays its children in multiple horizontal or vertical runs.

                    children: List.generate(
                      10,
                          (index) => Container(
                        margin: EdgeInsets.all(20),
                        color: Colors.yellow,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  LayoutBuilder(builder: (context, constraints) {
                    //Builds a widget tree that can depend on the parent widget's size.
                    if (constraints.maxWidth > 100) {
                      return Container(
                        color: Colors.orangeAccent,
                        height: 100,
                        width: 100,
                      );
                    } else {
                      return Container(
                        color: Colors.blue,
                        height: 100,
                        width: 100,
                      );
                    }
                  }),
                  InkWell(
                    onTap: () {
                      if (myanimation.isCompleted) {
                        myanimation.reverse();
                      } else {
                        myanimation.forward();
                      }
                    },
                    child: AnimatedIcon(
                      icon: AnimatedIcons.add_event,
                      color: Colors.red,
                      progress: myanimation,
                      size: 100,
                    ),
                  ),
                  /* InkWell(
                    onTap: (){
                      ScaffoldMessenger. of(context).showSnackBar(SnackBar(content: Text(' SnackBar Here-----' ), behavior: SnackBarBehavior.floating,));

                    },
                    child: Container(height: 50,
                        width: 200,
                        color: Colors.green,
                        child:  ElevatedButton(
                          child: Text('Click Here  To Show '),
                        ),),
                  ),*/
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Container(
                          height: 100,
                          width: 300,
                          color: Colors.green,
                          child: Center(child: Text('Navigate')))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
