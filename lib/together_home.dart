import 'package:flutter/material.dart';
import 'together_body.dart';

class TogetherHome extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {

      },
    ),
    title: SizedBox(
      height: 35.0,
      child: Image.network("https://desenio.com/bilder/artiklar/zoom/11059_1.jpg", width: 900.0),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: new TogetherBody(),
    );
  }
}
