import 'package:flutter/material.dart';

import 'SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMADU',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: SplashScreen(title: 'SIMADU'),
    );
  }
}