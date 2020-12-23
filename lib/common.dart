import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget getPodcastCover(Color color, double size) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(size / 8)))),
  );
}

Widget getDivider() {
  return Divider(
    color: Colors.grey,
    height: 5,
    thickness: 1,
    indent: 0,
    endIndent: 0,
  );
}

Widget _getPodcastTitle(Color color) {
  return Row(children: [
    getPodcastCover(color, 25),
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Podcast Title"),
      Text("5 hours ago", style: TextStyle(fontSize: 12, color: Colors.grey))
    ])
  ]);
}

Widget _getPlayPill() {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(children: [
          Icon(Icons.play_circle_outline, color: Colors.blue),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("59 min"),
          )
        ]),
      ));
}

Widget getEpisodeRow(Color color) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getPodcastTitle(color),
          Text("Lorem Ipsum Dolor Sit Amet",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(
              "Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit AmetLorem Ipsum Dolor Sit Amet"),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _getPlayPill(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.playlist_add, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_circle_down, color: Colors.blue),
            ),
          ]),
        ],
      ),
    ),
  ]);
}
