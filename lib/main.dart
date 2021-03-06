import 'package:flutter/material.dart';

import 'activity-page.dart';
import 'explore-page.dart';
import 'home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pc = PageController();
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: page,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_play), label: "Activity"),
            ],
            onTap: (page) {
              setState(() {
                this.page = page;
              });
              _pc.animateToPage(page,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            }),
        body: PageView(
          controller: _pc,
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
            ExplorePage(),
            ActivityPage(),
          ],
        ),
      ),
    );
  }
}
