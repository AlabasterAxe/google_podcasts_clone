import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _sc = ScrollController();

  Widget _getPodcastCover(Color color, double size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    );
  }

  Widget _getPodcastTitle(Color color) {
    return Row(children: [
      _getPodcastCover(color, 25),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Podcast Title"),
        Text("5 hours ago", style: TextStyle(fontSize: 12, color: Colors.grey))
      ])
    ]);
  }

  Widget _getEpisodeRow(Color color) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _getPodcastTitle(color),
      Text("Lorem Ipsum Dolor Sit Amet",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Text(
          "Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit Amet"),
    ]);
  }

  Widget _getDivider() {
    return Divider(
      color: Colors.grey,
      height: 5,
      thickness: 1,
      indent: 0,
      endIndent: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        leading: Icon(Icons.cast),
        centerTitle: true,
        title: Text("Google Podcasts"),
        floating: true,
        actions: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/d4/22/d7/d422d7642f00c404fdb5fea5393590a2.jpg")),
        ],
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _sc,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              _getPodcastCover(Colors.red, 100),
              _getPodcastCover(Colors.green, 100),
              _getPodcastCover(Colors.yellow, 100),
              _getPodcastCover(Colors.blue, 100),
              _getPodcastCover(Colors.yellow[900], 100),
            ]),
          ),
        ),
        _getEpisodeRow(Colors.red),
        _getDivider(),
        _getEpisodeRow(Colors.green),
        _getDivider(),
        _getEpisodeRow(Colors.yellow),
        _getDivider(),
        _getEpisodeRow(Colors.blue),
        _getDivider(),
        _getEpisodeRow(Colors.red),
        _getDivider(),
        _getEpisodeRow(Colors.red),
        _getDivider(),
        _getEpisodeRow(Colors.green),
        _getDivider(),
        _getEpisodeRow(Colors.yellow),
        _getDivider(),
        _getEpisodeRow(Colors.blue),
        _getDivider(),
        _getEpisodeRow(Colors.green),
        _getDivider(),
        _getEpisodeRow(Colors.yellow),
        _getDivider(),
        _getEpisodeRow(Colors.blue),
        _getDivider(),
        _getEpisodeRow(Colors.green),
        _getDivider(),
        _getEpisodeRow(Colors.yellow),
        _getDivider(),
        _getEpisodeRow(Colors.blue),
        _getDivider(),
        _getEpisodeRow(Colors.green),
        _getDivider(),
        _getEpisodeRow(Colors.yellow),
        _getDivider(),
        _getEpisodeRow(Colors.blue),
        _getDivider(),
        _getEpisodeRow(Colors.green),
        _getDivider(),
        _getEpisodeRow(Colors.yellow),
        _getDivider(),
        _getEpisodeRow(Colors.blue),
        _getDivider(),
      ]))
    ]);
  }
}
