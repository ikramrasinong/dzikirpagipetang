import 'package:dzikirpagipetang/home_screen.dart';
import 'package:dzikirpagipetang/screen/screen_dzikirpagi.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => HomeScreen(),
        '/DzikirPagi': (BuildContext context) => DzikirPagi(),
      },
    );
  }
}
