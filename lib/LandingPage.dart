import 'package:flutter/material.dart';
import 'package:simadu_app/Visitor/HomePage.dart';


class LandingPage extends StatefulWidget {
  LandingPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: Opacity(opacity: 0.0, child: Icon(Icons.home)),
            centerTitle: true,
            title: Text(
              widget.title,
              style: TextStyle(fontSize: 16.0),
            ),
            bottom: TabBar(
              isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home),child: Text('Home'),),
              Tab(icon: Icon(Icons.group),child: Text('We Are'),),
              Tab(icon: Icon(Icons.event),child: Text('Event'),),
              Tab(icon: Icon(Icons.library_books),child: Text('News'),),
              Tab(icon: Icon(Icons.shopping_cart),child: Text('Shop'),),
            ],
          ),
          ),
          body: TabBarView(
                children: [
                  Container(
                    child: HomePage(),
                  ),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                ],
          )
        ),
      );
  }
}
