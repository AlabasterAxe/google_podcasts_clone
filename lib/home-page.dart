import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'common.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _sc = ScrollController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        leading: Icon(Icons.cast, color: Colors.grey[900]),
        centerTitle: true,
        backgroundColor: Colors.white,
        title:
            Text("Google Podcasts", style: TextStyle(color: Colors.grey[900])),
        floating: true,
        actions: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/d4/22/d7/d422d7642f00c404fdb5fea5393590a2.jpg")),
        ],
      ),
      SliverList(
          delegate: SliverChildListDelegate.fixed([
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _sc,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              getPodcastCover(Colors.red, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.green, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.yellow, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.blue, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.yellow[900], 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.red, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.green, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.yellow, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.blue, 75),
              SizedBox(width: 8.0),
              getPodcastCover(Colors.yellow[900], 75),
            ]),
          ),
        ),
        getEpisodeRow(Colors.red),
        getDivider(),
        getEpisodeRow(Colors.green),
        getDivider(),
        getEpisodeRow(Colors.yellow),
        getDivider(),
        getEpisodeRow(Colors.blue),
        getDivider(),
        getEpisodeRow(Colors.red),
        getDivider(),
        getEpisodeRow(Colors.red),
        getDivider(),
        getEpisodeRow(Colors.green),
        getDivider(),
        getEpisodeRow(Colors.yellow),
        getDivider(),
        getEpisodeRow(Colors.blue),
        getDivider(),
        getEpisodeRow(Colors.green),
        getDivider(),
        getEpisodeRow(Colors.yellow),
        getDivider(),
        getEpisodeRow(Colors.blue),
        getDivider(),
        getEpisodeRow(Colors.green),
        getDivider(),
        getEpisodeRow(Colors.yellow),
        getDivider(),
        getEpisodeRow(Colors.blue),
        getDivider(),
        getEpisodeRow(Colors.green),
        getDivider(),
        getEpisodeRow(Colors.yellow),
        getDivider(),
        getEpisodeRow(Colors.blue),
        getDivider(),
        getEpisodeRow(Colors.green),
        getDivider(),
        getEpisodeRow(Colors.yellow),
        getDivider(),
        getEpisodeRow(Colors.blue),
        getDivider(),
      ]))
    ]);
  }
}
