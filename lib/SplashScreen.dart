import 'package:flutter/material.dart';
import 'package:simadu_app/LandingPage.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1),
    (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (c) => LandingPage(title:widget.title)));
    },
    
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Opacity(opacity: 0.0, child: Icon(Icons.home)),
        centerTitle: true,
            title: Text(widget.title,style: TextStyle(fontSize: 16.0),),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
        MaterialPageRoute(builder: (c) => LandingPage(title:widget.title)));
        },
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FadeInImage(
                    fadeInDuration: const Duration(seconds: 1),
                    placeholder: AssetImage('assets/images/Your-Logo-here.png'),
                    image: AssetImage('assets/images/Your-Logo-here.png'),
                  ),
              ],
            ),
          ),
        ),
      )
    );
  }
}