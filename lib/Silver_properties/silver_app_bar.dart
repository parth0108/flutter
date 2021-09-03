import 'package:flutter/material.dart';



class Silver_app_bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'GeeksforGeeks';

    return MaterialApp(
      home: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                snap: false,
                pinned: false,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("$title",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ) //TextStyle
                    ), //Text
                    background: Image.network(
                      "https://i.ibb.co/QpWGK5j/Geeksfor-Geeks.png",
                      fit: BoxFit.cover,
                    ) //Images.network
                ), //FlexibleSpaceBar
                expandedHeight: 230,
                backgroundColor: Colors.greenAccent[400],
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Menu',
                  onPressed: () {},
                ), //IconButton
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.comment),
                    tooltip: 'Comment Icon',
                    onPressed: () {},
                  ), //IconButton
                  IconButton(
                    icon: Icon(Icons.settings),
                    tooltip: 'Setting Icon',
                    onPressed: () {},
                  ), //IconButton
                ], //<Widget>[]
              ), //SliverAppBar
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) => ListTile(
                    tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                    title: Center(
                      child: Text('$index',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 50,
                              color: Colors.greenAccent[400]) //TextStyle
                      ), //Text
                    ), //Center
                  ), //ListTile
                  childCount: 51,
                ), //SliverChildBuildDelegate
              ) //SliverList
            ], //<Widget>[]
          ) //CustonScrollView
      ), //Scaffold
      debugShowCheckedModeBanner:false,
      // Remove debug banner for proper
      // view of setting icon
    ); //MaterialApp
  }
}
