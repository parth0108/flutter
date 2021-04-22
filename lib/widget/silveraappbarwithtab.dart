import 'dart:async';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart' as extend;
import 'package:flutter/material.dart';
import 'package:widget/widget/opecity.dart';
import 'package:widget/widget/safearea.dart';
import 'package:widget/widget/tabel.dart';


void main() => runApp(MyApp4());

class MyApp4 extends StatelessWidget {
  var scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MatchFragment());
  }

}
class MatchFragment extends StatefulWidget {
  @override
  _MatchFragmentState createState() => _MatchFragmentState();
}

class _MatchFragmentState extends State<MatchFragment>  with TickerProviderStateMixin {
  TabController primaryTC;

  @override
  void initState() {
    primaryTC = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
//var tabBarHeight = primaryTabBar.preferredSize.height;
    var pinnedHeaderHeight =
//statusBar height
    statusBarHeight +
        //pinned SliverAppBar height in header
        kToolbarHeight;
    return Scaffold(
        body: DefaultTabController(
          length: 2,
          child: extend.NestedScrollView(
              headerSliverBuilder: (c, f) {
                return <Widget>[
                  SliverAppBar(
                      pinned: true,
                      expandedHeight: 200,
                      actions: [

                        Icon(Icons.add)
                      ],
                      title: Text('Title'),

                      flexibleSpace: FlexibleSpaceBar(
                          background: Image.network(
                            "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                            fit: BoxFit.cover,
                          ))
                  ),

                ];

              },
              pinnedHeaderSliverHeightBuilder: () {
                return pinnedHeaderHeight;
              },
              body: Column(
                children: <Widget>[
                  TabBar(
                    controller: primaryTC,
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Tab1"),
                      Tab(text: "Tab2"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: primaryTC,
                      children: [
                        WidgetSafeArea(),
                        OpecityWidget(),
                      ],
                    ),
                  )
                ],
              )

          ),
        )
    );


  }

}