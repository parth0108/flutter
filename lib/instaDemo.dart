import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List story = [
    {
      "image": "assets/images/devs.jpg",
    },
    {
      "image": "assets/images/powered_by.png",
    },
    {
      "image": "assets/images/logo.jpg",
    },
    {
      "image": "assets/images/powered_by.png",
    },
    {
      "image": "assets/images/logo.jpg",
    },
  ];

  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Image.asset(
                'assets/images/Instagram-Logo.png',
                color: Colors.black,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 3,
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/IMG_0679.jpg'
                                        // story[index]["add story"]
                                      )),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                              ),
                              Container(
                                color: Colors.blue,
                                height: 20,
                                width: 20,
                                child: Center(
                                    child: Icon(
                                      // story[index]["add icon"],
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height/8,
                          width: MediaQuery.of(context).size.width/1.3,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: story.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [


                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  story[index]["image"],
                                                )),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(50.0)),
                                          ),
                                        ),

                                      ],
                                    ),
                                    // Container(
                                    //   width: 80,
                                    //   height: 80,
                                    //   decoration: BoxDecoration(
                                    //     image: DecorationImage(
                                    //         fit: BoxFit.cover,
                                    //         image: AssetImage(
                                    //             'assets/images/IMG_0679.jpg'
                                    //           // story[index]["add story"]
                                    //         )),
                                    //     borderRadius: BorderRadius.all(
                                    //         Radius.circular(50.0)),
                                    //   ),
                                    // ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Container(
                  //       padding: EdgeInsets.all(20),
                  //      height: 25,
                  //       width: 25,
                  //       decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             fit: BoxFit.cover,
                  //             image: AssetImage(
                  //                 'assets/images/IMG_0679.jpg'
                  //               // story[index]["add story"]
                  //             )),
                  //         borderRadius: BorderRadius.all(
                  //             Radius.circular(50.0)),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                ],
              ),
            )));
  }
}
