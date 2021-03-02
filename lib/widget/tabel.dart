import 'package:flutter/material.dart';

class TableExample extends StatefulWidget {
  @override
  _TableExampleState createState() => _TableExampleState();
}

class _TableExampleState extends State<TableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('Title'))),
              TableCell(
                child: Center(child: Text('Title')),
              ),
              TableCell(child: Center(child: Text('Title'))),
              TableCell(child: Center(child: Text('Title'))),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Value1')),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('Value1')),
              ),
              TableCell(
                  child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'fsdfhskfgsafghfgfhgjhfgsfhgjhf',
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ))),
              TableCell(
                child: Center(child: Text('Value')),
                verticalAlignment: TableCellVerticalAlignment.top,
              ),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('DAta'))),
              TableCell(
                child: Center(child: Text('DAta')),
              ),
              TableCell(child: Center(child: Text('DAta'))),
              TableCell(child: Center(child: Text('DAta'))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('DAta'))),
              TableCell(
                child: Center(child: Text('DAta')),
              ),
              TableCell(child: Center(child: Text('DAta'))),
              TableCell(child: Center(child: Text('DAta'))),
            ])
          ],
        ),
      ),
    );
  }
}