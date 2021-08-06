// import 'package:flutter/material.dart';
//
// class OriantationBuilder extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Orientation deviceOrientation = MediaQuery.of(context).orientation;
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               color: Colors.blue,
//               child: OrientationBuilder(
//                 builder: (context, orientation) => Center(
//                   child: Text(
//                     'View 1\n\n' +
//                         '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
//                         '[OrientationBuilder]:\n$orientation',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: OrientationBuilder(
//               builder: (context, orientation) => Container(
//                 color: Colors.white,
//                 child: Center(
//                   child: Text(
//                     'View 2\n\n' +
//                         '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
//                         '[OrientationBuilder]:\n$orientation',
//                     style: TextStyle(color: Colors.amber, fontSize: 18),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget _portraitMode(){
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Portrait Mode",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            new Image.asset(
              'assets/powered_by.png',
              height: 200,
              width: 200,
            ),
          ],
        ),
      ],
    );
  }


  Widget _landscapeMode(){
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Landscape Mode",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            new Image.asset('assets/powered_by.png',
              height: 50.0,
              fit: BoxFit.cover,
            )

          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Orientation In Flutter"),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return _portraitMode();
          }else{
            return _landscapeMode();
          }
        },
      ),
    );
  }
}