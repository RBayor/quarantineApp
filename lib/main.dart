import 'package:flutter/material.dart';
import 'together_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    
    return new MaterialApp(
      title: 'Togethe',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
          textTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: new TogetherHome(),
    );
  }
}
