import 'package:flutter/material.dart';
import 'package:feature_discovery/feature_discovery.dart';

class FeatureDiscoveryDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeatureDiscovery(
        recordStepsInSharedPreferences: false,
        child: FeatureDiscoveryDemoApp(),
      ),
    );
  }
}

class FeatureDiscoveryDemoApp extends StatefulWidget {
  @override
  _FeatureDiscoveryDemoAppState createState() =>
      _FeatureDiscoveryDemoAppState();
}

class _FeatureDiscoveryDemoAppState extends State<FeatureDiscoveryDemoApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      FeatureDiscovery.discoverFeatures(context, <String>[
        'feature1',
        'feature2',
        'feature3',
        'feature4',
      ]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DescribedFeatureOverlay(
            featureId: 'feature2',
            targetColor: Colors.white,
            textColor: Colors.white,
            backgroundColor: Colors.blue,
            contentLocation: ContentLocation.below,
            title: Text(
              'Menu Icon',
              style: TextStyle(fontSize: 20.0),
            ),
            pulseDuration: Duration(seconds: 1),
            enablePulsingAnimation: true,
            overflowMode: OverflowMode.clipContent,
            openDuration: Duration(seconds: 1),
            description: Text(
                'This is Button you can add more details heres\n New Info here add more!'),
            tapTarget: Icon(Icons.menu),
            child: IconButton(icon: Icon(Icons.menu), onPressed: () {})),
        title: Text('Feature Discovery Demo'),
        centerTitle: true,
        actions: [
          DescribedFeatureOverlay(
            featureId: 'feature3',
            targetColor: Colors.white,
            textColor: Colors.black,
            backgroundColor: Colors.amber,
            contentLocation: ContentLocation.trivial,
            title: Text(
              'More Icon',
              style: TextStyle(fontSize: 20.0),
            ),
            pulseDuration: Duration(seconds: 1),
            enablePulsingAnimation: true,
            barrierDismissible: false,
            overflowMode: OverflowMode.wrapBackground,
            openDuration: Duration(seconds: 1),
            description: Text('This is Button you can add more details heres'),
            tapTarget: Icon(Icons.search),
            child: IconButton(icon: Icon(Icons.search), onPressed: () {

            }),
            onOpen: () async {
              return true;
            },
          ),
        ],
      ),
      bottomNavigationBar: DescribedFeatureOverlay(
        featureId: 'feature1',
        targetColor: Colors.white,
        textColor: Colors.black,
        backgroundColor: Colors.red.shade100,
        contentLocation: ContentLocation.trivial,
        title: Text(
          'This is Button',
          style: TextStyle(fontSize: 20.0),
        ),
        pulseDuration: Duration(seconds: 1),
        enablePulsingAnimation: true,
        overflowMode: OverflowMode.extendBackground,
        openDuration: Duration(seconds: 1),
        description: Text('This is Button you can\n add more details heres'),
        tapTarget: Icon(Icons.navigation),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Notification'),
              icon: Icon(Icons.notifications_active)),
        ]),
      ),
    );
  }
}