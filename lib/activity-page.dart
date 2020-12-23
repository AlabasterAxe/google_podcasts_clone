import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        leading: Icon(Icons.cast, color: Colors.grey[900]),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Activity", style: TextStyle(color: Colors.grey[900])),
        floating: true,
        actions: [
          Icon(Icons.edit, color: Colors.grey[900]),
          Icon(Icons.more_vert, color: Colors.grey[900])
        ],
      ),
      SliverList(delegate: SliverChildListDelegate([]))
    ]);
  }
}
