import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        leading: Icon(Icons.cast, color: Colors.grey[900]),
        expandedHeight: 200,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              labelText: 'Search',
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: const Color(0xFFD1D0CE),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Explore", style: TextStyle(color: Colors.grey[900])),
        floating: true,
        actions: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/d4/22/d7/d422d7642f00c404fdb5fea5393590a2.jpg")),
        ],
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // A fixed-height child.
                        color: const Color(0xffeeee00), // Yellow
                        height: 120.0,
                        alignment: Alignment.center,
                        child: const Text('Fixed Height Content'),
                      ),
                      Expanded(
                        // A flexible child that will grow to fit the viewport but
                        // still be at least as big as necessary to fit its contents.
                        child: Container(
                          color: const Color(0xffee0000), // Red
                          height: 120.0,
                          alignment: Alignment.center,
                          child: const Text('Flexible Content'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ]))
    ]);
  }
}
