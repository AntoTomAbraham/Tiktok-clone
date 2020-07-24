import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //appBar: AppBar(
        //title: Center(child: Text("TikTok")),
        //),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                      extendBodyBehindAppBar: true,
                      extendBody: true,
                      appBar: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        titleSpacing: 0.0,
                        title:
                            TabBar(indicator: BoxDecoration(), tabs: <Widget>[
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Text("folllowing"),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(" for you"),
                            padding: EdgeInsets.only(left: 30.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        width: 2.0, color: Colors.white))),
                          )
                        ]),
                      ),
                      body: TabBarView(children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/a2.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text("oooo")
                      ]))),
            ),
            Text("1"),
            Text("1"),
            Text("1"),
            Text("1"),
          ],
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: TabBar(tabs: <Widget>[
          Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.search),
            text: "Discover",
          ),
          Tab(
            icon: Icon(Icons.add),
            text: "Add",
          ),
          Tab(
            icon: Icon(Icons.inbox),
            text: "inbox",
          ),
          Tab(
            icon: Icon(Icons.person),
            text: "Me",
          ),
        ]),
        floatingActionButton: Stack(
          children: <Widget>[
            Positioned(
                bottom: 20.0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                          child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage("images/a1.png"),
                      )),
                    ),
                    GestureDetector(
                      child: Container(
                          child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage("images/a1.png"),
                      )),
                    ),
                    GestureDetector(
                      child: Container(
                          child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage("images/a1.png"),
                      )),
                    ),
                    GestureDetector(
                      child: Container(
                          child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage("images/a1.png"),
                      )),
                    ),
                    GestureDetector(
                      child: Container(
                          child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage("images/a1.png"),
                      )),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
