import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  TabController tc;

  @override
  void initState() {
    super.initState();
    tc = TabController(length: 10, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 200,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          stretchModes: <StretchMode>[],
          collapseMode: CollapseMode.pin,
          background: Column(
            children: [
              AppBar(
                leading: Icon(Icons.cast, color: Colors.grey[900]),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
                title:
                    Text("Explore", style: TextStyle(color: Colors.grey[900])),
                actions: [
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/d4/22/d7/d422d7642f00c404fdb5fea5393590a2.jpg")),
                ],
              ),
              Padding(
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
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        floating: true,
        bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            indicatorWeight: 4,
            controller: tc,
            tabs: [
              Tab(child: Text("Lorem", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Ipsum", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Dolor", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Sit", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Amet", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Lorem", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Ipsum", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Dolor", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Sit", style: TextStyle(color: Colors.black))),
              Tab(child: Text("Amet", style: TextStyle(color: Colors.black))),
            ]),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: screenSize.height,
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
        )
      ]))
    ]);
  }
}
