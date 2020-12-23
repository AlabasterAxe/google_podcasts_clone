import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'common.dart';

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

  Widget _getPodcastColumn(Color color) {
    return Column(children: [
      getPodcastCover(color, 100),
      Container(
          width: 100,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Podcast Title", style: TextStyle(fontSize: 16)),
            Text("Subline", style: TextStyle(fontSize: 14, color: Colors.grey)),
          ]))
    ]);
  }

  Widget _getCollectionSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Text("Lorem Ipsum dolor sit amet", style: TextStyle(fontSize: 24)),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            _getPodcastColumn(Colors.red),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.green),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.yellow),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.blue),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.yellow[900]),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.red),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.green),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.yellow),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.blue),
            SizedBox(width: 8.0),
            _getPodcastColumn(Colors.yellow[900]),
          ]),
        ),
      ),
    ]);
  }

  Widget _getTabContents() {
    return Column(children: [
      _getCollectionSection(),
      getDivider(),
      getEpisodeRow(Colors.red),
      getDivider(),
      getEpisodeRow(Colors.yellow),
      getDivider(),
      getEpisodeRow(Colors.green),
      getDivider(),
      _getCollectionSection(),
      getDivider(),
      getEpisodeRow(Colors.blue),
      getDivider(),
      getEpisodeRow(Colors.blue),
    ]);
  }

  Widget _getSliverifiedTabPage(Widget child, String name) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        // This Builder is needed to provide a BuildContext that is
        // "inside" the NestedScrollView, so that
        // sliverOverlapAbsorberHandleFor() can find the
        // NestedScrollView.
        builder: (BuildContext context) {
          return CustomScrollView(
            // The "controller" and "primary" members should be left
            // unset, so that the NestedScrollView can control this
            // inner scroll view.
            // If the "controller" property is set, then this scroll
            // view will not be associated with the NestedScrollView.
            // The PageStorageKey should be unique to this ScrollView;
            // it allows the list to remember its scroll position when
            // the tab view is not on the screen.
            key: PageStorageKey<String>(name),
            slivers: <Widget>[
              SliverOverlapInjector(
                // This is the flip side of the SliverOverlapAbsorber
                // above.
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverList(delegate: SliverChildListDelegate.fixed([child])),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              // This widget takes the overlapping behavior of the SliverAppBar,
              // and redirects it to the SliverOverlapInjector below. If it is
              // missing, then it is possible for the nested "inner" scroll view
              // below to end up under the SliverAppBar even when the inner
              // scroll view thinks it has not been scrolled.
              // This is not necessary if the "headerSliverBuilder" only builds
              // widgets that do not overlap the next sliver.
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
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
                        title: Text("Explore",
                            style: TextStyle(color: Colors.grey[900])),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
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
                      Tab(
                          child: Text("Lorem",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Ipsum",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Dolor",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Sit",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Amet",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Lorem",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Ipsum",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Dolor",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Sit",
                              style: TextStyle(color: Colors.black))),
                      Tab(
                          child: Text("Amet",
                              style: TextStyle(color: Colors.black))),
                    ]),
              ),
            ),
          ];
        },
        body: TabBarView(controller: tc, children: [
          _getSliverifiedTabPage(_getTabContents(), "lorem"),
          _getSliverifiedTabPage(_getTabContents(), "ipsum"),
          _getSliverifiedTabPage(_getTabContents(), "dolor"),
          _getSliverifiedTabPage(_getTabContents(), "sit"),
          _getSliverifiedTabPage(_getTabContents(), "amet"),
          _getSliverifiedTabPage(_getTabContents(), "lorem2"),
          _getSliverifiedTabPage(_getTabContents(), "ipsum2"),
          _getSliverifiedTabPage(_getTabContents(), "dolor2"),
          _getSliverifiedTabPage(_getTabContents(), "sit2"),
          _getSliverifiedTabPage(_getTabContents(), "amet2"),
        ]));
  }
}
